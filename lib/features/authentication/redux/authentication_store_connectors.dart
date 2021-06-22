import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/core/states/app_state.dart';
import 'package:the_wellbeing_protocol/features/authentication/authentication_view_models.dart';
import 'package:the_wellbeing_protocol/features/authentication/redux/authentication_handlers.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/login_screen.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/restore_screen.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/splash_screen.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/verification_screen.dart';
import 'package:the_wellbeing_protocol/features/authentication/screens/welcome_screen.dart';

class LoginConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LoginViewModel>(
      distinct: true,
      builder: (context, vm) => LoginScreen(vm),
      converter: (store) => LoginViewModel(
        authState: store.state.authState,
        login: (phoneNum) {
          store.dispatch(HandleLogin(phoneNum));
        },
      ),
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/');
          },
          awaitingVerification: (_) {
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
        authState: store.state.authState,
        restore: (mnemonic) {
          store.dispatch(HandleRestore(mnemonic));
        },
      ),
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authState.maybeWhen(
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
        authState: store.state.authState,
      ),
      onInit: (store) {
        store.state.authState.maybeWhen(
          authenticated: () {
            context.router.navigateNamed('/hub');
          },
          orElse: () {
            store.dispatch(HandleAuthentication());
          },
        );
      },
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authState.maybeWhen(
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
        authState: store.state.authState,
        phoneNum: store.state.user.primaryContactNum!,
        verify: (verificationCode) {
          store.dispatch(HandleVerification(verificationCode));
        },
      ),
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authState.maybeWhen(
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
