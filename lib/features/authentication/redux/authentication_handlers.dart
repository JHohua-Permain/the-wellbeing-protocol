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
      await HandleUpdate().call(store, services);
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

class HandleSettingDisplayName extends HandlerAction {
  final String displayName;

  HandleSettingDisplayName(this.displayName);

  @override
  Future<dynamic> call(Store<AppState> store, AppServices services) async {
    // TODO: Validation.
    await HandleUserIntialisation(displayName).call(store, services);
  }
}

class HandleUpdate extends HandlerAction {
  @override
  Future<dynamic> call(Store<AppState> store, AppServices services) async {
    String walletAddress = store.state.user.walletAddress!;
    var web3 = services.fuseNetworkService;
    var api = services.fuseAPIService;

    String communityAddress = web3.getDefaultCommunity();
    Token homeToken = await api.fetchCommunityHomeToken(web3, communityAddress);

    dynamic homeTokenBalanceData = await web3.getTokenBalance(
      homeToken.address,
      address: walletAddress,
    );

    String homeTokenBalance = homeTokenBalanceData.toString();

    Map<String, String> tokenBalances = {homeToken.address: homeTokenBalance};

    store.dispatch(SetUserTokenBalances(tokenBalances));
    store.dispatch(SetCommunityHomeToken(homeToken));
  }
}

class HandleUserIntialisation extends HandlerAction {
  final String displayName;

  HandleUserIntialisation(this.displayName);

  @override
  Future<dynamic> call(Store<AppState> store, AppServices services) async {
    var web3 = services.fuseNetworkService;
    var api = services.fuseAPIService;

    String communityAddress = web3.getDefaultCommunity();
    Token homeToken = await api.fetchCommunityHomeToken(web3, communityAddress);

    await api.createWallet(communityAddress: communityAddress);

    dynamic walletData = await api.getWallet();
    String walletAddress = walletData['walletAddress'];
    await api.joinCommunity(
      services.fuseNetworkService,
      walletAddress,
      communityAddress,
      tokenAddress: homeToken.address,
    );

    await api.prepareUserDataForDb(walletAddress, displayName);

    dynamic homeTokenBalanceData = await web3.getTokenBalance(
      homeToken.address,
      address: walletAddress,
    );

    String homeTokenBalance = homeTokenBalanceData.toString();

    Map<String, String> tokenBalances = {homeToken.address: homeTokenBalance};

    // If the user is already a part of the database, then a duplication error
    //  is thrown and the new display name is not set, so we make this call
    //  to manually set the display name.
    await api.updateDisplayName(walletAddress, displayName);

    store.dispatch(SetUserWalletAddress(walletAddress));
    store.dispatch(SetUserTokenBalances(tokenBalances));
    store.dispatch(SetUserDisplayName(displayName));
    store.dispatch(SetCommunityAddress(communityAddress));
    store.dispatch(SetCommunityHomeToken(homeToken));
    store.dispatch(UpdateAuthState(AuthState.authenticated()));
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
    return store
        .dispatch(UpdateAuthState(AuthState.awaitingUserInitialisation()));
  }
}
