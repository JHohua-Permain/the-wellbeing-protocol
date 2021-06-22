// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  Authenticated authenticated() {
    return const Authenticated();
  }

  AwaitingLogin awaitingLogin() {
    return const AwaitingLogin();
  }

  AwaitingUserInitialisation awaitingUserInitialisation() {
    return const AwaitingUserInitialisation();
  }

  AwaitingVerification awaitingVerification([String? verificationId]) {
    return AwaitingVerification(
      verificationId,
    );
  }

  Initial initial() {
    return const Initial();
  }

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() awaitingLogin,
    required TResult Function() awaitingUserInitialisation,
    required TResult Function(String? verificationId) awaitingVerification,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? awaitingLogin,
    TResult Function()? awaitingUserInitialisation,
    TResult Function(String? verificationId)? awaitingVerification,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AwaitingLogin value) awaitingLogin,
    required TResult Function(AwaitingUserInitialisation value)
        awaitingUserInitialisation,
    required TResult Function(AwaitingVerification value) awaitingVerification,
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AwaitingLogin value)? awaitingLogin,
    TResult Function(AwaitingUserInitialisation value)?
        awaitingUserInitialisation,
    TResult Function(AwaitingVerification value)? awaitingVerification,
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc

class _$Authenticated with DiagnosticableTreeMixin implements Authenticated {
  const _$Authenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.authenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() awaitingLogin,
    required TResult Function() awaitingUserInitialisation,
    required TResult Function(String? verificationId) awaitingVerification,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? awaitingLogin,
    TResult Function()? awaitingUserInitialisation,
    TResult Function(String? verificationId)? awaitingVerification,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AwaitingLogin value) awaitingLogin,
    required TResult Function(AwaitingUserInitialisation value)
        awaitingUserInitialisation,
    required TResult Function(AwaitingVerification value) awaitingVerification,
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AwaitingLogin value)? awaitingLogin,
    TResult Function(AwaitingUserInitialisation value)?
        awaitingUserInitialisation,
    TResult Function(AwaitingVerification value)? awaitingVerification,
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $AwaitingLoginCopyWith<$Res> {
  factory $AwaitingLoginCopyWith(
          AwaitingLogin value, $Res Function(AwaitingLogin) then) =
      _$AwaitingLoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$AwaitingLoginCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AwaitingLoginCopyWith<$Res> {
  _$AwaitingLoginCopyWithImpl(
      AwaitingLogin _value, $Res Function(AwaitingLogin) _then)
      : super(_value, (v) => _then(v as AwaitingLogin));

  @override
  AwaitingLogin get _value => super._value as AwaitingLogin;
}

/// @nodoc

class _$AwaitingLogin with DiagnosticableTreeMixin implements AwaitingLogin {
  const _$AwaitingLogin();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.awaitingLogin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.awaitingLogin'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AwaitingLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() awaitingLogin,
    required TResult Function() awaitingUserInitialisation,
    required TResult Function(String? verificationId) awaitingVerification,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
  }) {
    return awaitingLogin();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? awaitingLogin,
    TResult Function()? awaitingUserInitialisation,
    TResult Function(String? verificationId)? awaitingVerification,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (awaitingLogin != null) {
      return awaitingLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AwaitingLogin value) awaitingLogin,
    required TResult Function(AwaitingUserInitialisation value)
        awaitingUserInitialisation,
    required TResult Function(AwaitingVerification value) awaitingVerification,
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return awaitingLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AwaitingLogin value)? awaitingLogin,
    TResult Function(AwaitingUserInitialisation value)?
        awaitingUserInitialisation,
    TResult Function(AwaitingVerification value)? awaitingVerification,
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (awaitingLogin != null) {
      return awaitingLogin(this);
    }
    return orElse();
  }
}

abstract class AwaitingLogin implements AuthState {
  const factory AwaitingLogin() = _$AwaitingLogin;
}

/// @nodoc
abstract class $AwaitingUserInitialisationCopyWith<$Res> {
  factory $AwaitingUserInitialisationCopyWith(AwaitingUserInitialisation value,
          $Res Function(AwaitingUserInitialisation) then) =
      _$AwaitingUserInitialisationCopyWithImpl<$Res>;
}

/// @nodoc
class _$AwaitingUserInitialisationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AwaitingUserInitialisationCopyWith<$Res> {
  _$AwaitingUserInitialisationCopyWithImpl(AwaitingUserInitialisation _value,
      $Res Function(AwaitingUserInitialisation) _then)
      : super(_value, (v) => _then(v as AwaitingUserInitialisation));

  @override
  AwaitingUserInitialisation get _value =>
      super._value as AwaitingUserInitialisation;
}

/// @nodoc

class _$AwaitingUserInitialisation
    with DiagnosticableTreeMixin
    implements AwaitingUserInitialisation {
  const _$AwaitingUserInitialisation();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.awaitingUserInitialisation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthState.awaitingUserInitialisation'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AwaitingUserInitialisation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() awaitingLogin,
    required TResult Function() awaitingUserInitialisation,
    required TResult Function(String? verificationId) awaitingVerification,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
  }) {
    return awaitingUserInitialisation();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? awaitingLogin,
    TResult Function()? awaitingUserInitialisation,
    TResult Function(String? verificationId)? awaitingVerification,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (awaitingUserInitialisation != null) {
      return awaitingUserInitialisation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AwaitingLogin value) awaitingLogin,
    required TResult Function(AwaitingUserInitialisation value)
        awaitingUserInitialisation,
    required TResult Function(AwaitingVerification value) awaitingVerification,
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return awaitingUserInitialisation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AwaitingLogin value)? awaitingLogin,
    TResult Function(AwaitingUserInitialisation value)?
        awaitingUserInitialisation,
    TResult Function(AwaitingVerification value)? awaitingVerification,
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (awaitingUserInitialisation != null) {
      return awaitingUserInitialisation(this);
    }
    return orElse();
  }
}

abstract class AwaitingUserInitialisation implements AuthState {
  const factory AwaitingUserInitialisation() = _$AwaitingUserInitialisation;
}

/// @nodoc
abstract class $AwaitingVerificationCopyWith<$Res> {
  factory $AwaitingVerificationCopyWith(AwaitingVerification value,
          $Res Function(AwaitingVerification) then) =
      _$AwaitingVerificationCopyWithImpl<$Res>;
  $Res call({String? verificationId});
}

/// @nodoc
class _$AwaitingVerificationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AwaitingVerificationCopyWith<$Res> {
  _$AwaitingVerificationCopyWithImpl(
      AwaitingVerification _value, $Res Function(AwaitingVerification) _then)
      : super(_value, (v) => _then(v as AwaitingVerification));

  @override
  AwaitingVerification get _value => super._value as AwaitingVerification;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(AwaitingVerification(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AwaitingVerification
    with DiagnosticableTreeMixin
    implements AwaitingVerification {
  const _$AwaitingVerification([this.verificationId]);

  @override
  final String? verificationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.awaitingVerification(verificationId: $verificationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.awaitingVerification'))
      ..add(DiagnosticsProperty('verificationId', verificationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AwaitingVerification &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verificationId);

  @JsonKey(ignore: true)
  @override
  $AwaitingVerificationCopyWith<AwaitingVerification> get copyWith =>
      _$AwaitingVerificationCopyWithImpl<AwaitingVerification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() awaitingLogin,
    required TResult Function() awaitingUserInitialisation,
    required TResult Function(String? verificationId) awaitingVerification,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
  }) {
    return awaitingVerification(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? awaitingLogin,
    TResult Function()? awaitingUserInitialisation,
    TResult Function(String? verificationId)? awaitingVerification,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (awaitingVerification != null) {
      return awaitingVerification(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AwaitingLogin value) awaitingLogin,
    required TResult Function(AwaitingUserInitialisation value)
        awaitingUserInitialisation,
    required TResult Function(AwaitingVerification value) awaitingVerification,
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return awaitingVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AwaitingLogin value)? awaitingLogin,
    TResult Function(AwaitingUserInitialisation value)?
        awaitingUserInitialisation,
    TResult Function(AwaitingVerification value)? awaitingVerification,
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (awaitingVerification != null) {
      return awaitingVerification(this);
    }
    return orElse();
  }
}

abstract class AwaitingVerification implements AuthState {
  const factory AwaitingVerification([String? verificationId]) =
      _$AwaitingVerification;

  String? get verificationId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AwaitingVerificationCopyWith<AwaitingVerification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() awaitingLogin,
    required TResult Function() awaitingUserInitialisation,
    required TResult Function(String? verificationId) awaitingVerification,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? awaitingLogin,
    TResult Function()? awaitingUserInitialisation,
    TResult Function(String? verificationId)? awaitingVerification,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AwaitingLogin value) awaitingLogin,
    required TResult Function(AwaitingUserInitialisation value)
        awaitingUserInitialisation,
    required TResult Function(AwaitingVerification value) awaitingVerification,
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AwaitingLogin value)? awaitingLogin,
    TResult Function(AwaitingUserInitialisation value)?
        awaitingUserInitialisation,
    TResult Function(AwaitingVerification value)? awaitingVerification,
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc

class _$Unauthenticated
    with DiagnosticableTreeMixin
    implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() awaitingLogin,
    required TResult Function() awaitingUserInitialisation,
    required TResult Function(String? verificationId) awaitingVerification,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? awaitingLogin,
    TResult Function()? awaitingUserInitialisation,
    TResult Function(String? verificationId)? awaitingVerification,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AwaitingLogin value) awaitingLogin,
    required TResult Function(AwaitingUserInitialisation value)
        awaitingUserInitialisation,
    required TResult Function(AwaitingVerification value) awaitingVerification,
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AwaitingLogin value)? awaitingLogin,
    TResult Function(AwaitingUserInitialisation value)?
        awaitingUserInitialisation,
    TResult Function(AwaitingVerification value)? awaitingVerification,
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}
