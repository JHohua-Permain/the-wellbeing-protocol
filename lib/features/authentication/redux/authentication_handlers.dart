import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/common/redux/common_actions.dart';
import 'package:the_wellbeing_protocol/core/enums/auth_method.dart';
import 'package:the_wellbeing_protocol/core/models/token.dart';
import 'package:the_wellbeing_protocol/core/services/app_services.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/core/states/auth_state.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_actions.dart';

class HandleAuthentication extends HandlerAction {
  @override
  Future<dynamic> call(Store<AppState> store, AppServices services) async {
    String? mnemonic = store.state.user.mnemonic;
    String? jwt = store.state.user.jwt;
    if (mnemonic != null && jwt != null) {
      services.fuseNetworkService.setCredentialsFromMnemonic(mnemonic);
      services.fuseAPIService.setJwtToken(jwt);
      return store.dispatch(UpdateAuthState(AuthState.authenticated()));
    }
    return store.dispatch(UpdateAuthState(AuthState.unauthenticated()));
  }
}

class HandleLogin extends HandlerAction {
  final String phoneNum;

  HandleLogin(this.phoneNum);

  @override
  Future<dynamic> call(Store<AppState> store, AppServices services) async {
    //TODO: Validate phone number.
    String _phoneNum = phoneNum.replaceRange(0, 1, '+64');
    store.dispatch(SetUserPrimaryContactNum(_phoneNum));

    switch (services.authMethod) {
      case AuthMethod.Basic:
        await HandleVerification().call(store, services);
        return;
      case AuthMethod.Sms:
        try {
          await services.fuseAPIService.loginWithSMS(_phoneNum);
          return store.dispatch(UpdateAuthState(
            AuthState.awaitingVerification(),
          ));
        } catch (e) {
          // TODO: Handle failed login attempt.
          throw UnimplementedError();
        }
      default:
        throw 'Authentication method not set...';
    }
  }
}

class HandleRestore extends HandlerAction {
  final String mnemonic;

  HandleRestore(this.mnemonic);

  @override
  Future<dynamic> call(Store<AppState> store, AppServices services) async {
    store.dispatch(SetUserMnemonic(mnemonic));
    return store.dispatch(UpdateAuthState(AuthState.awaitingLogin()));
  }
}

class HandleUserIntialisation extends HandlerAction {
  @override
  Future<dynamic> call(Store<AppState> store, AppServices services) async {
    String communityAddress = services.fuseNetworkService.getDefaultCommunity();
    Token homeToken = await services.fuseAPIService
        .fetchCommunityHomeToken(services.fuseNetworkService, communityAddress);

    await services.fuseAPIService
        .createWallet(communityAddress: communityAddress);

    dynamic walletData = await services.fuseAPIService.getWallet();
    String walletAddress = walletData['walletAddress'];
    await services.fuseAPIService.joinCommunity(
      services.fuseNetworkService,
      walletAddress,
      communityAddress,
      tokenAddress: homeToken.address,
    );

    store.dispatch(SetUserWalletAddress(walletAddress));
    store.dispatch(SetCommunityAddress(communityAddress));
    store.dispatch(SetCommunityHomeToken(homeToken));
  }
}

class HandleVerification extends HandlerAction {
  final String? verificationCode;

  HandleVerification([this.verificationCode]);

  @override
  Future<dynamic> call(Store<AppState> store, AppServices services) async {
    String? mnemonic = store.state.user.mnemonic;
    if (mnemonic == null) {
      mnemonic = services.fuseNetworkService.generateMnemonic();
      store.dispatch(SetUserMnemonic(mnemonic));
    }
    await services.fuseNetworkService.setCredentialsFromMnemonic(mnemonic);

    String accountAddress = await services.fuseNetworkService.getAddress();
    store.dispatch(SetUserAccountAddress(accountAddress));

    String phoneNum = store.state.user.primaryContactNum!;
    String? jwt;

    if (services.authMethod == AuthMethod.Basic) {
      jwt = await services.fuseAPIService.requestToken(
        phoneNum,
        accountAddress,
      );
    } else if (services.authMethod == AuthMethod.Sms) {
      jwt = await services.fuseAPIService.verifySMS(
        verificationCode!,
        phoneNum,
        accountAddress,
      );
    } else {
      throw 'Authentication method not set...';
    }

    services.fuseAPIService.setJwtToken(jwt);
    store.dispatch(SetUserJwt(jwt));
    await HandleUserIntialisation().call(store, services);
    return store.dispatch(UpdateAuthState(AuthState.authenticated()));
  }
}
