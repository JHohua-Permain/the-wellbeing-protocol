// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  Authenticated authenticated() {
    return const Authenticated();
  }

  AwaitingLogin awaitingLogin() {
    return const AwaitingLogin();
  }

  AwaitingVerification awaitingVerification(String phoneNumber,
      [String? verificationId]) {
    return AwaitingVerification(
      phoneNumber,
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
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() awaitingLogin,
    required TResult Function(String phoneNumber, String? verificationId)
        awaitingVerification,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? awaitingLogin,
    TResult Function(String phoneNumber, String? verificationId)?
        awaitingVerification,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AwaitingLogin value) awaitingLogin,
    required TResult Function(AwaitingVerification value) awaitingVerification,
    required TResult Function(Initial value) initial,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AwaitingLogin value)? awaitingLogin,
    TResult Function(AwaitingVerification value)? awaitingVerification,
    TResult Function(Initial value)? initial,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.authenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.authenticated'));
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
    required TResult Function(String phoneNumber, String? verificationId)
        awaitingVerification,
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
    TResult Function(String phoneNumber, String? verificationId)?
        awaitingVerification,
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

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $AwaitingLoginCopyWith<$Res> {
  factory $AwaitingLoginCopyWith(
          AwaitingLogin value, $Res Function(AwaitingLogin) then) =
      _$AwaitingLoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$AwaitingLoginCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.awaitingLogin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.awaitingLogin'));
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
    required TResult Function(String phoneNumber, String? verificationId)
        awaitingVerification,
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
    TResult Function(String phoneNumber, String? verificationId)?
        awaitingVerification,
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

abstract class AwaitingLogin implements AuthenticationState {
  const factory AwaitingLogin() = _$AwaitingLogin;
}

/// @nodoc
abstract class $AwaitingVerificationCopyWith<$Res> {
  factory $AwaitingVerificationCopyWith(AwaitingVerification value,
          $Res Function(AwaitingVerification) then) =
      _$AwaitingVerificationCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String? verificationId});
}

/// @nodoc
class _$AwaitingVerificationCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AwaitingVerificationCopyWith<$Res> {
  _$AwaitingVerificationCopyWithImpl(
      AwaitingVerification _value, $Res Function(AwaitingVerification) _then)
      : super(_value, (v) => _then(v as AwaitingVerification));

  @override
  AwaitingVerification get _value => super._value as AwaitingVerification;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? verificationId = freezed,
  }) {
    return _then(AwaitingVerification(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
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
  const _$AwaitingVerification(this.phoneNumber, [this.verificationId]);

  @override
  final String phoneNumber;
  @override
  final String? verificationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.awaitingVerification(phoneNumber: $phoneNumber, verificationId: $verificationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthenticationState.awaitingVerification'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('verificationId', verificationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AwaitingVerification &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
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
    required TResult Function(String phoneNumber, String? verificationId)
        awaitingVerification,
    required TResult Function() initial,
    required TResult Function() unauthenticated,
  }) {
    return awaitingVerification(phoneNumber, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? awaitingLogin,
    TResult Function(String phoneNumber, String? verificationId)?
        awaitingVerification,
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (awaitingVerification != null) {
      return awaitingVerification(phoneNumber, verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AwaitingLogin value) awaitingLogin,
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

abstract class AwaitingVerification implements AuthenticationState {
  const factory AwaitingVerification(String phoneNumber,
      [String? verificationId]) = _$AwaitingVerification;

  String get phoneNumber => throw _privateConstructorUsedError;
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
class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthenticationState.initial'));
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
    required TResult Function(String phoneNumber, String? verificationId)
        awaitingVerification,
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
    TResult Function(String phoneNumber, String? verificationId)?
        awaitingVerification,
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

abstract class Initial implements AuthenticationState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.unauthenticated'));
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
    required TResult Function(String phoneNumber, String? verificationId)
        awaitingVerification,
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
    TResult Function(String phoneNumber, String? verificationId)?
        awaitingVerification,
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

abstract class Unauthenticated implements AuthenticationState {
  const factory Unauthenticated() = _$Unauthenticated;
}
