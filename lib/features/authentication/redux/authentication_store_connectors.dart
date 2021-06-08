import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/features/authentication/authentication_view_models.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_actions.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/login_screen.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/restore_screen.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/splash_screen.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/verification_screen.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/welcome_screen.dart';
import 'package:the_wellbeing_protocol/models/app_state.dart';
import 'package:the_wellbeing_protocol/models/authentication_state.dart';

class LoginConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LoginViewModel>(
      distinct: true,
      builder: (context, vm) => LoginScreen(vm),
      converter: (store) => LoginViewModel(
        authenticationState: store.state.user.authenticationState,
        login: (phoneNum) {
          store.dispatch(BeginLogin(phoneNum));
        },
      ),
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/');
          },
          awaitingVerification: (_, __) {
            context.router.navigateNamed('/login/verify');
          },
          orElse: () => null,
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
        authenticationState: store.state.user.authenticationState,
        restore: (mnemonic) {
          store.dispatch(BeginRestore(mnemonic));
        },
      ),
      onInit: (store) {
        if (store.state.user.authenticationState is AwaitingLogin) {
          context.router.navigateNamed('/login');
        }
      },
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          awaitingLogin: () {
            context.router.navigateNamed('/login');
          },
          orElse: () => null,
        );
      },
    );
  }
}

/// The entry point of the UI.
class SplashConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SplashViewModel>(
      distinct: true,
      builder: (context, _) => SplashScreen(),
      converter: (store) => SplashViewModel(
        authenticationState: store.state.user.authenticationState,
      ),
      onInit: (store) {
        store.state.user.authenticationState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/hub');
          },
          orElse: () {
            store.dispatch(BeginAuthentication());
          },
        );
      },
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/hub');
          },
          orElse: () {
            context.router.navigateNamed('/welcome');
          },
        );
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
        phoneNum: () {
          // TODO: Cleaner way of doing this.
          final authState = store.state.user.authenticationState;
          if (authState is AwaitingVerification) {
            return authState.phoneNumber;
          }
          return '';
        }(),
        verify: (verificationCode) {
          store.dispatch(BeginVerification(
            store.state.user.authenticationState,
            verificationCode,
          ));
        },
      ),
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authenticationState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/');
          },
          orElse: () => null,
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
        pushLoginScreen: () => context.router.navigateNamed('/login'),
        pushRestoreScreen: () => context.router.navigateNamed('/restore'),
      ),
    );
  }
}
