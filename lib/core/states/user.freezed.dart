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
      List<String> communities = const [],
      Map<String, String> wallet = const {},
      String? mnemonic,
      String? jwt,
      @JsonKey(ignore: true) List<CommunityEntity> contacts = const [],
      @JsonKey(ignore: true) List<Transfer> transfers = const []}) {
    return _User(
      accountAddress: accountAddress,
      walletAddress: walletAddress,
      primaryContactNum: primaryContactNum,
      displayName: displayName,
      communities: communities,
      wallet: wallet,
      mnemonic: mnemonic,
      jwt: jwt,
      contacts: contacts,
      transfers: transfers,
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
  List<String> get communities => throw _privateConstructorUsedError;
  Map<String, String> get wallet => throw _privateConstructorUsedError;
  String? get mnemonic => throw _privateConstructorUsedError;
  String? get jwt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<CommunityEntity> get contacts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<Transfer> get transfers => throw _privateConstructorUsedError;

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
      List<String> communities,
      Map<String, String> wallet,
      String? mnemonic,
      String? jwt,
      @JsonKey(ignore: true) List<CommunityEntity> contacts,
      @JsonKey(ignore: true) List<Transfer> transfers});
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
    Object? mnemonic = freezed,
    Object? jwt = freezed,
    Object? contacts = freezed,
    Object? transfers = freezed,
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
              as List<String>,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      jwt: jwt == freezed
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String?,
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
      transfers: transfers == freezed
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as List<Transfer>,
    ));
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
      List<String> communities,
      Map<String, String> wallet,
      String? mnemonic,
      String? jwt,
      @JsonKey(ignore: true) List<CommunityEntity> contacts,
      @JsonKey(ignore: true) List<Transfer> transfers});
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
    Object? mnemonic = freezed,
    Object? jwt = freezed,
    Object? contacts = freezed,
    Object? transfers = freezed,
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
              as List<String>,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String?,
      jwt: jwt == freezed
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String?,
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
      transfers: transfers == freezed
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as List<Transfer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {this.accountAddress,
      this.walletAddress,
      this.primaryContactNum,
      this.displayName = 'Anon',
      this.communities = const [],
      this.wallet = const {},
      this.mnemonic,
      this.jwt,
      @JsonKey(ignore: true) this.contacts = const [],
      @JsonKey(ignore: true) this.transfers = const []});

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
  final List<String> communities;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> wallet;
  @override
  final String? mnemonic;
  @override
  final String? jwt;
  @override
  @JsonKey(ignore: true)
  final List<CommunityEntity> contacts;
  @override
  @JsonKey(ignore: true)
  final List<Transfer> transfers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(accountAddress: $accountAddress, walletAddress: $walletAddress, primaryContactNum: $primaryContactNum, displayName: $displayName, communities: $communities, wallet: $wallet, mnemonic: $mnemonic, jwt: $jwt, contacts: $contacts, transfers: $transfers)';
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
      ..add(DiagnosticsProperty('mnemonic', mnemonic))
      ..add(DiagnosticsProperty('jwt', jwt))
      ..add(DiagnosticsProperty('contacts', contacts))
      ..add(DiagnosticsProperty('transfers', transfers));
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
            (identical(other.mnemonic, mnemonic) ||
                const DeepCollectionEquality()
                    .equals(other.mnemonic, mnemonic)) &&
            (identical(other.jwt, jwt) ||
                const DeepCollectionEquality().equals(other.jwt, jwt)) &&
            (identical(other.contacts, contacts) ||
                const DeepCollectionEquality()
                    .equals(other.contacts, contacts)) &&
            (identical(other.transfers, transfers) ||
                const DeepCollectionEquality()
                    .equals(other.transfers, transfers)));
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
      const DeepCollectionEquality().hash(mnemonic) ^
      const DeepCollectionEquality().hash(jwt) ^
      const DeepCollectionEquality().hash(contacts) ^
      const DeepCollectionEquality().hash(transfers);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {String? accountAddress,
      String? walletAddress,
      String? primaryContactNum,
      String displayName,
      List<String> communities,
      Map<String, String> wallet,
      String? mnemonic,
      String? jwt,
      @JsonKey(ignore: true) List<CommunityEntity> contacts,
      @JsonKey(ignore: true) List<Transfer> transfers}) = _$_User;

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
  List<String> get communities => throw _privateConstructorUsedError;
  @override
  Map<String, String> get wallet => throw _privateConstructorUsedError;
  @override
  String? get mnemonic => throw _privateConstructorUsedError;
  @override
  String? get jwt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<CommunityEntity> get contacts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<Transfer> get transfers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
