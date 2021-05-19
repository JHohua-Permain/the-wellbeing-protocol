// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  return _UserState.fromJson(json);
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call(
      {required String displayName,
      required String phoneNumber,
      @JsonKey(ignore: true) List<UserContact> contacts = const <UserContact>[],
      required String accountAddress,
      @JsonKey(ignore: true) bool authenticated = false,
      required String walletAddress,
      Token? currentToken,
      @JsonKey(ignore: true) String? currentTokenBalance}) {
    return _UserState(
      displayName: displayName,
      phoneNumber: phoneNumber,
      contacts: contacts,
      accountAddress: accountAddress,
      authenticated: authenticated,
      walletAddress: walletAddress,
      currentToken: currentToken,
      currentTokenBalance: currentTokenBalance,
    );
  }

  UserState fromJson(Map<String, Object> json) {
    return UserState.fromJson(json);
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  String get displayName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<UserContact> get contacts =>
      throw _privateConstructorUsedError; //Users web3 data.
  String get accountAddress => throw _privateConstructorUsedError; //Flags
  @JsonKey(ignore: true)
  bool get authenticated =>
      throw _privateConstructorUsedError; //TODO: Maybe move these into a separate model.
//Users wallet data.
  String get walletAddress => throw _privateConstructorUsedError;
  Token? get currentToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get currentTokenBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {String displayName,
      String phoneNumber,
      @JsonKey(ignore: true) List<UserContact> contacts,
      String accountAddress,
      @JsonKey(ignore: true) bool authenticated,
      String walletAddress,
      Token? currentToken,
      @JsonKey(ignore: true) String? currentTokenBalance});

  $TokenCopyWith<$Res>? get currentToken;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? contacts = freezed,
    Object? accountAddress = freezed,
    Object? authenticated = freezed,
    Object? walletAddress = freezed,
    Object? currentToken = freezed,
    Object? currentTokenBalance = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<UserContact>,
      accountAddress: accountAddress == freezed
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
      authenticated: authenticated == freezed
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentToken: currentToken == freezed
          ? _value.currentToken
          : currentToken // ignore: cast_nullable_to_non_nullable
              as Token?,
      currentTokenBalance: currentTokenBalance == freezed
          ? _value.currentTokenBalance
          : currentTokenBalance // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $TokenCopyWith<$Res>? get currentToken {
    if (_value.currentToken == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.currentToken!, (value) {
      return _then(_value.copyWith(currentToken: value));
    });
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String phoneNumber,
      @JsonKey(ignore: true) List<UserContact> contacts,
      String accountAddress,
      @JsonKey(ignore: true) bool authenticated,
      String walletAddress,
      Token? currentToken,
      @JsonKey(ignore: true) String? currentTokenBalance});

  @override
  $TokenCopyWith<$Res>? get currentToken;
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? contacts = freezed,
    Object? accountAddress = freezed,
    Object? authenticated = freezed,
    Object? walletAddress = freezed,
    Object? currentToken = freezed,
    Object? currentTokenBalance = freezed,
  }) {
    return _then(_UserState(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<UserContact>,
      accountAddress: accountAddress == freezed
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
      authenticated: authenticated == freezed
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentToken: currentToken == freezed
          ? _value.currentToken
          : currentToken // ignore: cast_nullable_to_non_nullable
              as Token?,
      currentTokenBalance: currentTokenBalance == freezed
          ? _value.currentTokenBalance
          : currentTokenBalance // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserState with DiagnosticableTreeMixin implements _UserState {
  _$_UserState(
      {required this.displayName,
      required this.phoneNumber,
      @JsonKey(ignore: true) this.contacts = const <UserContact>[],
      required this.accountAddress,
      @JsonKey(ignore: true) this.authenticated = false,
      required this.walletAddress,
      this.currentToken,
      @JsonKey(ignore: true) this.currentTokenBalance});

  factory _$_UserState.fromJson(Map<String, dynamic> json) =>
      _$_$_UserStateFromJson(json);

  @override
  final String displayName;
  @override
  final String phoneNumber;
  @override
  @JsonKey(ignore: true)
  final List<UserContact> contacts;
  @override //Users web3 data.
  final String accountAddress;
  @override //Flags
  @JsonKey(ignore: true)
  final bool authenticated;
  @override //TODO: Maybe move these into a separate model.
//Users wallet data.
  final String walletAddress;
  @override
  final Token? currentToken;
  @override
  @JsonKey(ignore: true)
  final String? currentTokenBalance;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState(displayName: $displayName, phoneNumber: $phoneNumber, contacts: $contacts, accountAddress: $accountAddress, authenticated: $authenticated, walletAddress: $walletAddress, currentToken: $currentToken, currentTokenBalance: $currentTokenBalance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('contacts', contacts))
      ..add(DiagnosticsProperty('accountAddress', accountAddress))
      ..add(DiagnosticsProperty('authenticated', authenticated))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('currentToken', currentToken))
      ..add(DiagnosticsProperty('currentTokenBalance', currentTokenBalance));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserState &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)) &&
            (identical(other.accountAddress, accountAddress) ||
                const DeepCollectionEquality()
                    .equals(other.accountAddress, accountAddress)) &&
            (identical(other.authenticated, authenticated) ||
                const DeepCollectionEquality()
                    .equals(other.authenticated, authenticated)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.currentToken, currentToken) ||
                const DeepCollectionEquality()
                    .equals(other.currentToken, currentToken)) &&
            (identical(other.currentTokenBalance, currentTokenBalance) ||
                const DeepCollectionEquality()
                    .equals(other.currentTokenBalance, currentTokenBalance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(contacts) ^
      const DeepCollectionEquality().hash(accountAddress) ^
      const DeepCollectionEquality().hash(authenticated) ^
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(currentToken) ^
      const DeepCollectionEquality().hash(currentTokenBalance);

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserStateToJson(this);
  }
}

abstract class _UserState implements UserState {
  factory _UserState(
      {required String displayName,
      required String phoneNumber,
      @JsonKey(ignore: true) List<UserContact> contacts,
      required String accountAddress,
      @JsonKey(ignore: true) bool authenticated,
      required String walletAddress,
      Token? currentToken,
      @JsonKey(ignore: true) String? currentTokenBalance}) = _$_UserState;

  factory _UserState.fromJson(Map<String, dynamic> json) =
      _$_UserState.fromJson;

  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<UserContact> get contacts => throw _privateConstructorUsedError;
  @override //Users web3 data.
  String get accountAddress => throw _privateConstructorUsedError;
  @override //Flags
  @JsonKey(ignore: true)
  bool get authenticated => throw _privateConstructorUsedError;
  @override //TODO: Maybe move these into a separate model.
//Users wallet data.
  String get walletAddress => throw _privateConstructorUsedError;
  @override
  Token? get currentToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get currentTokenBalance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
