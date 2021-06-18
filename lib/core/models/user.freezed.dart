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
      {String? accountAddress,
      String? walletAddress,
      String? primaryContactNum,
      String displayName = 'Anon',
      List<Community> communities = const [],
      Map<String, String> wallet = const {},
      List<Transfer> transfers = const [],
      @JsonKey(ignore: true) List<CommunityEntity> contacts = const [],
      @JsonKey(ignore: true) CommunityEntity? sendToContact,
      @JsonKey(ignore: true) AuthenticationState authenticationState =
          const AuthenticationState.initial(),
      @JsonKey(ignore: true) List<String>? mnemonic}) {
    return _User(
      accountAddress: accountAddress,
      walletAddress: walletAddress,
      primaryContactNum: primaryContactNum,
      displayName: displayName,
      communities: communities,
      wallet: wallet,
      transfers: transfers,
      contacts: contacts,
      sendToContact: sendToContact,
      authenticationState: authenticationState,
      mnemonic: mnemonic,
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
  String? get accountAddress => throw _privateConstructorUsedError;
  String? get walletAddress => throw _privateConstructorUsedError;
  String? get primaryContactNum => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  List<Community> get communities => throw _privateConstructorUsedError;
  Map<String, String> get wallet => throw _privateConstructorUsedError;
  List<Transfer> get transfers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<CommunityEntity> get contacts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  CommunityEntity? get sendToContact => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  AuthenticationState get authenticationState =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<String>? get mnemonic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? accountAddress,
      String? walletAddress,
      String? primaryContactNum,
      String displayName,
      List<Community> communities,
      Map<String, String> wallet,
      List<Transfer> transfers,
      @JsonKey(ignore: true) List<CommunityEntity> contacts,
      @JsonKey(ignore: true) CommunityEntity? sendToContact,
      @JsonKey(ignore: true) AuthenticationState authenticationState,
      @JsonKey(ignore: true) List<String>? mnemonic});

  $CommunityEntityCopyWith<$Res>? get sendToContact;
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
    Object? accountAddress = freezed,
    Object? walletAddress = freezed,
    Object? primaryContactNum = freezed,
    Object? displayName = freezed,
    Object? communities = freezed,
    Object? wallet = freezed,
    Object? transfers = freezed,
    Object? contacts = freezed,
    Object? sendToContact = freezed,
    Object? authenticationState = freezed,
    Object? mnemonic = freezed,
  }) {
    return _then(_value.copyWith(
      accountAddress: accountAddress == freezed
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryContactNum: primaryContactNum == freezed
          ? _value.primaryContactNum
          : primaryContactNum // ignore: cast_nullable_to_non_nullable
              as String?,
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
      transfers: transfers == freezed
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as List<Transfer>,
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
      sendToContact: sendToContact == freezed
          ? _value.sendToContact
          : sendToContact // ignore: cast_nullable_to_non_nullable
              as CommunityEntity?,
      authenticationState: authenticationState == freezed
          ? _value.authenticationState
          : authenticationState // ignore: cast_nullable_to_non_nullable
              as AuthenticationState,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $CommunityEntityCopyWith<$Res>? get sendToContact {
    if (_value.sendToContact == null) {
      return null;
    }

    return $CommunityEntityCopyWith<$Res>(_value.sendToContact!, (value) {
      return _then(_value.copyWith(sendToContact: value));
    });
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
      {String? accountAddress,
      String? walletAddress,
      String? primaryContactNum,
      String displayName,
      List<Community> communities,
      Map<String, String> wallet,
      List<Transfer> transfers,
      @JsonKey(ignore: true) List<CommunityEntity> contacts,
      @JsonKey(ignore: true) CommunityEntity? sendToContact,
      @JsonKey(ignore: true) AuthenticationState authenticationState,
      @JsonKey(ignore: true) List<String>? mnemonic});

  @override
  $CommunityEntityCopyWith<$Res>? get sendToContact;
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
    Object? accountAddress = freezed,
    Object? walletAddress = freezed,
    Object? primaryContactNum = freezed,
    Object? displayName = freezed,
    Object? communities = freezed,
    Object? wallet = freezed,
    Object? transfers = freezed,
    Object? contacts = freezed,
    Object? sendToContact = freezed,
    Object? authenticationState = freezed,
    Object? mnemonic = freezed,
  }) {
    return _then(_User(
      accountAddress: accountAddress == freezed
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryContactNum: primaryContactNum == freezed
          ? _value.primaryContactNum
          : primaryContactNum // ignore: cast_nullable_to_non_nullable
              as String?,
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
      transfers: transfers == freezed
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as List<Transfer>,
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
      sendToContact: sendToContact == freezed
          ? _value.sendToContact
          : sendToContact // ignore: cast_nullable_to_non_nullable
              as CommunityEntity?,
      authenticationState: authenticationState == freezed
          ? _value.authenticationState
          : authenticationState // ignore: cast_nullable_to_non_nullable
              as AuthenticationState,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User(
      {this.accountAddress,
      this.walletAddress,
      this.primaryContactNum,
      this.displayName = 'Anon',
      this.communities = const [],
      this.wallet = const {},
      this.transfers = const [],
      @JsonKey(ignore: true)
          this.contacts = const [],
      @JsonKey(ignore: true)
          this.sendToContact,
      @JsonKey(ignore: true)
          this.authenticationState = const AuthenticationState.initial(),
      @JsonKey(ignore: true)
          this.mnemonic})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String? accountAddress;
  @override
  final String? walletAddress;
  @override
  final String? primaryContactNum;
  @JsonKey(defaultValue: 'Anon')
  @override
  final String displayName;
  @JsonKey(defaultValue: const [])
  @override
  final List<Community> communities;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> wallet;
  @JsonKey(defaultValue: const [])
  @override
  final List<Transfer> transfers;
  @override
  @JsonKey(ignore: true)
  final List<CommunityEntity> contacts;
  @override
  @JsonKey(ignore: true)
  final CommunityEntity? sendToContact;
  @override
  @JsonKey(ignore: true)
  final AuthenticationState authenticationState;
  @override
  @JsonKey(ignore: true)
  final List<String>? mnemonic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(accountAddress: $accountAddress, walletAddress: $walletAddress, primaryContactNum: $primaryContactNum, displayName: $displayName, communities: $communities, wallet: $wallet, transfers: $transfers, contacts: $contacts, sendToContact: $sendToContact, authenticationState: $authenticationState, mnemonic: $mnemonic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('accountAddress', accountAddress))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('primaryContactNum', primaryContactNum))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('communities', communities))
      ..add(DiagnosticsProperty('wallet', wallet))
      ..add(DiagnosticsProperty('transfers', transfers))
      ..add(DiagnosticsProperty('contacts', contacts))
      ..add(DiagnosticsProperty('sendToContact', sendToContact))
      ..add(DiagnosticsProperty('authenticationState', authenticationState))
      ..add(DiagnosticsProperty('mnemonic', mnemonic));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.accountAddress, accountAddress) ||
                const DeepCollectionEquality()
                    .equals(other.accountAddress, accountAddress)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.primaryContactNum, primaryContactNum) ||
                const DeepCollectionEquality()
                    .equals(other.primaryContactNum, primaryContactNum)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.communities, communities) ||
                const DeepCollectionEquality()
                    .equals(other.communities, communities)) &&
            (identical(other.wallet, wallet) ||
                const DeepCollectionEquality().equals(other.wallet, wallet)) &&
            (identical(other.transfers, transfers) ||
                const DeepCollectionEquality()
                    .equals(other.transfers, transfers)) &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)) &&
            (identical(other.sendToContact, sendToContact) ||
                const DeepCollectionEquality()
                    .equals(other.sendToContact, sendToContact)) &&
            (identical(other.authenticationState, authenticationState) ||
                const DeepCollectionEquality()
                    .equals(other.authenticationState, authenticationState)) &&
            (identical(other.mnemonic, mnemonic) ||
                const DeepCollectionEquality()
                    .equals(other.mnemonic, mnemonic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountAddress) ^
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(primaryContactNum) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(communities) ^
      const DeepCollectionEquality().hash(wallet) ^
      const DeepCollectionEquality().hash(transfers) ^
      const DeepCollectionEquality().hash(contacts) ^
      const DeepCollectionEquality().hash(sendToContact) ^
      const DeepCollectionEquality().hash(authenticationState) ^
      const DeepCollectionEquality().hash(mnemonic);

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
      {String? accountAddress,
      String? walletAddress,
      String? primaryContactNum,
      String displayName,
      List<Community> communities,
      Map<String, String> wallet,
      List<Transfer> transfers,
      @JsonKey(ignore: true) List<CommunityEntity> contacts,
      @JsonKey(ignore: true) CommunityEntity? sendToContact,
      @JsonKey(ignore: true) AuthenticationState authenticationState,
      @JsonKey(ignore: true) List<String>? mnemonic}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get accountAddress => throw _privateConstructorUsedError;
  @override
  String? get walletAddress => throw _privateConstructorUsedError;
  @override
  String? get primaryContactNum => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  List<Community> get communities => throw _privateConstructorUsedError;
  @override
  Map<String, String> get wallet => throw _privateConstructorUsedError;
  @override
  List<Transfer> get transfers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<CommunityEntity> get contacts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  CommunityEntity? get sendToContact => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  AuthenticationState get authenticationState =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<String>? get mnemonic => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
