import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/redux/actions_ui/auth_actions.dart';
import 'package:the_wellbeing_protocol/routing/app_router.gr.dart';
import 'package:the_wellbeing_protocol/screens/authentication/login_screen.dart';
import 'package:the_wellbeing_protocol/screens/authentication/restore_screen.dart';
import 'package:the_wellbeing_protocol/screens/authentication/verification_dialog.dart';
import 'package:the_wellbeing_protocol/screens/authentication/welcome_screen.dart';
import 'package:the_wellbeing_protocol/screens_redux/authentication_view_models.dart';

// TODO: A lot still needs to be done/fixed.

class LoginConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LoginViewModel>(
      distinct: true,
      builder: (context, vm) => LoginScreen(vm),
      converter: (store) => LoginViewModel(
        authenticationState: store.state.user.authenticationState,
        login: (phoneNum) {
          context.router.push(ProgressPopup());
          store.dispatch(ProcessLogin(phoneNum));
        },
      ),
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/hub');
          },
          awaitingVerification: (phoneNum, verificationCode) {
            context.router.replace(VerificationPopup(phoneNum: phoneNum));
          },
          orElse: () {},
        );
      },
    );
  }
}

class RestoreConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RestoreViewModel>(
      distinct: true,
      builder: (context, vm) => RestoreScreen(vm),
      converter: (store) => RestoreViewModel(
        accountAddress: store.state.user.accountAddress,
        restore: (mnemonic) {
          context.router.push(ProgressPopup());

          store.dispatch(processRestore(mnemonic));
        },
      ),
      onInit: (store) {
        if (store.state.user.accountAddress != '') {
          context.router.pushNamed('/login');
        }
      },
      onWillChange: (previousViewModel, newViewModel) {
        //TODO: Validation.
        context.router.replaceNamed('/login');
      },
    );
  }
}

class VerificationConnector extends StatelessWidget {
  final String phoneNum;

  VerificationConnector(this.phoneNum);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, VerificationViewModel>(
      distinct: true,
      builder: (context, vm) => VerificationDialog(vm),
      converter: (store) => VerificationViewModel(
        authenticationState: store.state.user.authenticationState,
        verify: (verificationCode) {
          context.router.push(ProgressPopup());
        },
      ),
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/');
          },
          orElse: () {
            //TODO: Failed verification.
          },
        );
      },
    );
  }
}

class WelcomeConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, WelcomeViewModel>(
      rebuildOnChange: false,
      builder: (context, vm) => WelcomeScreen(vm),
      converter: (store) => WelcomeViewModel(
        authenticationState: store.state.user.authenticationState,
        pushLoginScreen: () => context.router.navigate(LoginPage()),
        pushRestoreScreen: () => context.router.navigate(RestorePage()),
      ),
      onInit: (store) {
        store.dispatch(Reauthenticate());
      },
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          authenticated: () => context.router.pushNamed('/hub'),
          orElse: () {},
        );
      },
    );
  }
}
