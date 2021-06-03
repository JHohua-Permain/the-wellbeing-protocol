// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {String? primaryContactNum,
      String accountAddress = '',
      String walletAddress = '',
      String displayName = 'Anon',
      List<Community> communities = const [],
      Map<String, String> wallet = const {},
      @JsonKey(ignore: true) List<CommunityEntity> contacts = const [],
      @JsonKey(ignore: true) AuthenticationState authenticationState =
          const AuthenticationState.unauthenticated()}) {
    return _User(
      primaryContactNum: primaryContactNum,
      accountAddress: accountAddress,
      walletAddress: walletAddress,
      displayName: displayName,
      communities: communities,
      wallet: wallet,
      contacts: contacts,
      authenticationState: authenticationState,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get primaryContactNum => throw _privateConstructorUsedError;
  String get accountAddress => throw _privateConstructorUsedError;
  String get walletAddress => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  List<Community> get communities => throw _privateConstructorUsedError;
  Map<String, String> get wallet => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<CommunityEntity> get contacts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  AuthenticationState get authenticationState =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? primaryContactNum,
      String accountAddress,
      String walletAddress,
      String displayName,
      List<Community> communities,
      Map<String, String> wallet,
      @JsonKey(ignore: true) List<CommunityEntity> contacts,
      @JsonKey(ignore: true) AuthenticationState authenticationState});

  $AuthenticationStateCopyWith<$Res> get authenticationState;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? primaryContactNum = freezed,
    Object? accountAddress = freezed,
    Object? walletAddress = freezed,
    Object? displayName = freezed,
    Object? communities = freezed,
    Object? wallet = freezed,
    Object? contacts = freezed,
    Object? authenticationState = freezed,
  }) {
    return _then(_value.copyWith(
      primaryContactNum: primaryContactNum == freezed
          ? _value.primaryContactNum
          : primaryContactNum // ignore: cast_nullable_to_non_nullable
              as String?,
      accountAddress: accountAddress == freezed
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      communities: communities == freezed
          ? _value.communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<Community>,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
      authenticationState: authenticationState == freezed
          ? _value.authenticationState
          : authenticationState // ignore: cast_nullable_to_non_nullable
              as AuthenticationState,
    ));
  }

  @override
  $AuthenticationStateCopyWith<$Res> get authenticationState {
    return $AuthenticationStateCopyWith<$Res>(_value.authenticationState,
        (value) {
      return _then(_value.copyWith(authenticationState: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? primaryContactNum,
      String accountAddress,
      String walletAddress,
      String displayName,
      List<Community> communities,
      Map<String, String> wallet,
      @JsonKey(ignore: true) List<CommunityEntity> contacts,
      @JsonKey(ignore: true) AuthenticationState authenticationState});

  @override
  $AuthenticationStateCopyWith<$Res> get authenticationState;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? primaryContactNum = freezed,
    Object? accountAddress = freezed,
    Object? walletAddress = freezed,
    Object? displayName = freezed,
    Object? communities = freezed,
    Object? wallet = freezed,
    Object? contacts = freezed,
    Object? authenticationState = freezed,
  }) {
    return _then(_User(
      primaryContactNum: primaryContactNum == freezed
          ? _value.primaryContactNum
          : primaryContactNum // ignore: cast_nullable_to_non_nullable
              as String?,
      accountAddress: accountAddress == freezed
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      communities: communities == freezed
          ? _value.communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<Community>,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
      authenticationState: authenticationState == freezed
          ? _value.authenticationState
          : authenticationState // ignore: cast_nullable_to_non_nullable
              as AuthenticationState,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User(
      {this.primaryContactNum,
      this.accountAddress = '',
      this.walletAddress = '',
      this.displayName = 'Anon',
      this.communities = const [],
      this.wallet = const {},
      @JsonKey(ignore: true) this.contacts = const [],
      @JsonKey(ignore: true) this.authenticationState =
          const AuthenticationState.unauthenticated()})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String? primaryContactNum;
  @JsonKey(defaultValue: '')
  @override
  final String accountAddress;
  @JsonKey(defaultValue: '')
  @override
  final String walletAddress;
  @JsonKey(defaultValue: 'Anon')
  @override
  final String displayName;
  @JsonKey(defaultValue: const [])
  @override
  final List<Community> communities;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> wallet;
  @override
  @JsonKey(ignore: true)
  final List<CommunityEntity> contacts;
  @override
  @JsonKey(ignore: true)
  final AuthenticationState authenticationState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(primaryContactNum: $primaryContactNum, accountAddress: $accountAddress, walletAddress: $walletAddress, displayName: $displayName, communities: $communities, wallet: $wallet, contacts: $contacts, authenticationState: $authenticationState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('primaryContactNum', primaryContactNum))
      ..add(DiagnosticsProperty('accountAddress', accountAddress))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('communities', communities))
      ..add(DiagnosticsProperty('wallet', wallet))
      ..add(DiagnosticsProperty('contacts', contacts))
      ..add(DiagnosticsProperty('authenticationState', authenticationState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.primaryContactNum, primaryContactNum) ||
                const DeepCollectionEquality()
                    .equals(other.primaryContactNum, primaryContactNum)) &&
            (identical(other.accountAddress, accountAddress) ||
                const DeepCollectionEquality()
                    .equals(other.accountAddress, accountAddress)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.communities, communities) ||
                const DeepCollectionEquality()
                    .equals(other.communities, communities)) &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)) &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)) &&
            (identical(other.authenticationState, authenticationState) ||
                const DeepCollectionEquality()
                    .equals(other.authenticationState, authenticationState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(primaryContactNum) ^
      const DeepCollectionEquality().hash(accountAddress) ^
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(communities) ^
      const DeepCollectionEquality().hash(wallet) ^
      const DeepCollectionEquality().hash(contacts) ^
      const DeepCollectionEquality().hash(authenticationState);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User extends User {
  const factory _User(
          {String? primaryContactNum,
          String accountAddress,
          String walletAddress,
          String displayName,
          List<Community> communities,
          Map<String, String> wallet,
          @JsonKey(ignore: true) List<CommunityEntity> contacts,
          @JsonKey(ignore: true) AuthenticationState authenticationState}) =
      _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get primaryContactNum => throw _privateConstructorUsedError;
  @override
  String get accountAddress => throw _privateConstructorUsedError;
  @override
  String get walletAddress => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  List<Community> get communities => throw _privateConstructorUsedError;
  @override
  Map<String, String> get wallet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<CommunityEntity> get contacts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  AuthenticationState get authenticationState =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
