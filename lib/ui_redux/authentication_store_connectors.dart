import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/models/authentication_state.dart';
import 'package:the_wellbeing_protocol/routing/app_router.gr.dart';
import 'package:the_wellbeing_protocol/ui/screens/authentication/login_screen.dart';
import 'package:the_wellbeing_protocol/ui/screens/authentication/restore_screen.dart';
import 'package:the_wellbeing_protocol/ui/screens/authentication/verification_screen.dart';
import 'package:the_wellbeing_protocol/ui/screens/authentication/welcome_screen.dart';
import 'package:the_wellbeing_protocol/ui/view_models/authentication_view_models.dart';
import 'package:the_wellbeing_protocol/ui_redux/authentication_actions.dart';

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
          store.dispatch(StartLogin(phoneNum));
        },
      ),
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/');
          },
          awaitingVerification: (phoneNum, verificationCode) {
            context.router.replaceNamed('/login/verification');
          },
          orElse: () {
            //TODO: Handle login errors.
            return UnimplementedError('Handling login errors');
          },
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
          store.dispatch(StartRestore(mnemonic));
        },
      ),
      onInit: (store) {
        if (store.state.user.accountAddress != '') {
          context.router.pushNamed('/login');
        }
      },
      onWillChange: (previousViewModel, newViewModel) {
        if (newViewModel.accountAddress != '') {
          context.router.navigateNamed('/login');
        }
        //TODO: Handle errors.
      },
    );
  }
}

class VerificationConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, VerificationViewModel>(
      distinct: true,
      builder: (context, vm) => VerificationScreen(vm),
      converter: (store) => VerificationViewModel(
        authenticationState: store.state.user.authenticationState,
        verify: (verificationCode) {
          context.router.push(ProgressPopup());
          String phoneNum =
              (store.state.user.authenticationState as AwaitingVerification)
                  .phoneNumber;
          store.dispatch(StartVerification(phoneNum, verificationCode));
        },
      ),
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/');
          },
          orElse: () {
            //TODO: Handle failed verification and errors.
            return UnimplementedError('Handle failed verification and errors');
          },
        );
      },
    );
  }
}

/// The entry point of the UI.
class WelcomeConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, WelcomeViewModel>(
      distinct: true,
      builder: (context, vm) => WelcomeScreen(vm),
      converter: (store) => WelcomeViewModel(
        authenticationState: store.state.user.authenticationState,
        pushLoginScreen: () => context.router.navigate(LoginPage()),
        pushRestoreScreen: () => context.router.navigate(RestorePage()),
      ),
      onInit: (store) {
        store.state.user.authenticationState.maybeWhen(
          authenticated: () {
            context.router.pushNamed('/hub');
          },
          orElse: () {
            store.dispatch(StartReAuthentication());
          },
        );
      },
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          authenticated: () {
            context.router.pushNamed('/hub');
          },
          orElse: () {},
        );
      },
    );
  }
}
