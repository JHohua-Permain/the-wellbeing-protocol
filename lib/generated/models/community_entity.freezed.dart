// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'community_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunityEntity _$CommunityEntityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'member':
      return CommunityMember.fromJson(json);
    case 'shop':
      return CommunityShop.fromJson(json);
    case 'userContact':
      return UserContact.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CommunityEntityTearOff {
  const _$CommunityEntityTearOff();

  CommunityMember member(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) {
    return CommunityMember(
      displayName: displayName,
      walletAddress: walletAddress,
      primaryContactNumber: primaryContactNumber,
      communityFundContribution: communityFundContribution,
      avatar: avatar,
    );
  }

  CommunityShop shop(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) {
    return CommunityShop(
      displayName: displayName,
      walletAddress: walletAddress,
      primaryContactNumber: primaryContactNumber,
      communityFundContribution: communityFundContribution,
      avatar: avatar,
    );
  }

  UserContact userContact(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) {
    return UserContact(
      displayName: displayName,
      walletAddress: walletAddress,
      primaryContactNumber: primaryContactNumber,
      communityFundContribution: communityFundContribution,
      avatar: avatar,
    );
  }

  CommunityEntity fromJson(Map<String, Object> json) {
    return CommunityEntity.fromJson(json);
  }
}

/// @nodoc
const $CommunityEntity = _$CommunityEntityTearOff();

/// @nodoc
mixin _$CommunityEntity {
  String get displayName => throw _privateConstructorUsedError;
  String get walletAddress => throw _privateConstructorUsedError;
  String? get primaryContactNumber => throw _privateConstructorUsedError;
  int get communityFundContribution => throw _privateConstructorUsedError;
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  Uint8List? get avatar => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        member,
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        shop,
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        userContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        member,
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        shop,
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        userContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityShop value) shop,
    required TResult Function(UserContact value) userContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityShop value)? shop,
    TResult Function(UserContact value)? userContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityEntityCopyWith<CommunityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityEntityCopyWith<$Res> {
  factory $CommunityEntityCopyWith(
          CommunityEntity value, $Res Function(CommunityEntity) then) =
      _$CommunityEntityCopyWithImpl<$Res>;
  $Res call(
      {String displayName,
      String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar});
}

/// @nodoc
class _$CommunityEntityCopyWithImpl<$Res>
    implements $CommunityEntityCopyWith<$Res> {
  _$CommunityEntityCopyWithImpl(this._value, this._then);

  final CommunityEntity _value;
  // ignore: unused_field
  final $Res Function(CommunityEntity) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? walletAddress = freezed,
    Object? primaryContactNumber = freezed,
    Object? communityFundContribution = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContactNumber: primaryContactNumber == freezed
          ? _value.primaryContactNumber
          : primaryContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      communityFundContribution: communityFundContribution == freezed
          ? _value.communityFundContribution
          : communityFundContribution // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
abstract class $CommunityMemberCopyWith<$Res>
    implements $CommunityEntityCopyWith<$Res> {
  factory $CommunityMemberCopyWith(
          CommunityMember value, $Res Function(CommunityMember) then) =
      _$CommunityMemberCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar});
}

/// @nodoc
class _$CommunityMemberCopyWithImpl<$Res>
    extends _$CommunityEntityCopyWithImpl<$Res>
    implements $CommunityMemberCopyWith<$Res> {
  _$CommunityMemberCopyWithImpl(
      CommunityMember _value, $Res Function(CommunityMember) _then)
      : super(_value, (v) => _then(v as CommunityMember));

  @override
  CommunityMember get _value => super._value as CommunityMember;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? walletAddress = freezed,
    Object? primaryContactNumber = freezed,
    Object? communityFundContribution = freezed,
    Object? avatar = freezed,
  }) {
    return _then(CommunityMember(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContactNumber: primaryContactNumber == freezed
          ? _value.primaryContactNumber
          : primaryContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      communityFundContribution: communityFundContribution == freezed
          ? _value.communityFundContribution
          : communityFundContribution // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityMember
    with DiagnosticableTreeMixin
    implements CommunityMember {
  _$CommunityMember(
      {required this.displayName,
      required this.walletAddress,
      this.primaryContactNumber,
      this.communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) this.avatar});

  factory _$CommunityMember.fromJson(Map<String, dynamic> json) =>
      _$_$CommunityMemberFromJson(json);

  @override
  final String displayName;
  @override
  final String walletAddress;
  @override
  final String? primaryContactNumber;
  @JsonKey(defaultValue: 0)
  @override
  final int communityFundContribution;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  final Uint8List? avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityEntity.member(displayName: $displayName, walletAddress: $walletAddress, primaryContactNumber: $primaryContactNumber, communityFundContribution: $communityFundContribution, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityEntity.member'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('primaryContactNumber', primaryContactNumber))
      ..add(DiagnosticsProperty(
          'communityFundContribution', communityFundContribution))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommunityMember &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.primaryContactNumber, primaryContactNumber) ||
                const DeepCollectionEquality().equals(
                    other.primaryContactNumber, primaryContactNumber)) &&
            (identical(other.communityFundContribution,
                    communityFundContribution) ||
                const DeepCollectionEquality().equals(
                    other.communityFundContribution,
                    communityFundContribution)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(primaryContactNumber) ^
      const DeepCollectionEquality().hash(communityFundContribution) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  $CommunityMemberCopyWith<CommunityMember> get copyWith =>
      _$CommunityMemberCopyWithImpl<CommunityMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        member,
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        shop,
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        userContact,
  }) {
    return member(displayName, walletAddress, primaryContactNumber,
        communityFundContribution, avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        member,
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        shop,
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        userContact,
    required TResult orElse(),
  }) {
    if (member != null) {
      return member(displayName, walletAddress, primaryContactNumber,
          communityFundContribution, avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityShop value) shop,
    required TResult Function(UserContact value) userContact,
  }) {
    return member(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityShop value)? shop,
    TResult Function(UserContact value)? userContact,
    required TResult orElse(),
  }) {
    if (member != null) {
      return member(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CommunityMemberToJson(this)..['runtimeType'] = 'member';
  }
}

abstract class CommunityMember implements CommunityEntity {
  factory CommunityMember(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) = _$CommunityMember;

  factory CommunityMember.fromJson(Map<String, dynamic> json) =
      _$CommunityMember.fromJson;

  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get walletAddress => throw _privateConstructorUsedError;
  @override
  String? get primaryContactNumber => throw _privateConstructorUsedError;
  @override
  int get communityFundContribution => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  Uint8List? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CommunityMemberCopyWith<CommunityMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityShopCopyWith<$Res>
    implements $CommunityEntityCopyWith<$Res> {
  factory $CommunityShopCopyWith(
          CommunityShop value, $Res Function(CommunityShop) then) =
      _$CommunityShopCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar});
}

/// @nodoc
class _$CommunityShopCopyWithImpl<$Res>
    extends _$CommunityEntityCopyWithImpl<$Res>
    implements $CommunityShopCopyWith<$Res> {
  _$CommunityShopCopyWithImpl(
      CommunityShop _value, $Res Function(CommunityShop) _then)
      : super(_value, (v) => _then(v as CommunityShop));

  @override
  CommunityShop get _value => super._value as CommunityShop;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? walletAddress = freezed,
    Object? primaryContactNumber = freezed,
    Object? communityFundContribution = freezed,
    Object? avatar = freezed,
  }) {
    return _then(CommunityShop(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContactNumber: primaryContactNumber == freezed
          ? _value.primaryContactNumber
          : primaryContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      communityFundContribution: communityFundContribution == freezed
          ? _value.communityFundContribution
          : communityFundContribution // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityShop with DiagnosticableTreeMixin implements CommunityShop {
  _$CommunityShop(
      {required this.displayName,
      required this.walletAddress,
      this.primaryContactNumber,
      this.communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) this.avatar});

  factory _$CommunityShop.fromJson(Map<String, dynamic> json) =>
      _$_$CommunityShopFromJson(json);

  @override
  final String displayName;
  @override
  final String walletAddress;
  @override
  final String? primaryContactNumber;
  @JsonKey(defaultValue: 0)
  @override
  final int communityFundContribution;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  final Uint8List? avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityEntity.shop(displayName: $displayName, walletAddress: $walletAddress, primaryContactNumber: $primaryContactNumber, communityFundContribution: $communityFundContribution, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityEntity.shop'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('primaryContactNumber', primaryContactNumber))
      ..add(DiagnosticsProperty(
          'communityFundContribution', communityFundContribution))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommunityShop &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.primaryContactNumber, primaryContactNumber) ||
                const DeepCollectionEquality().equals(
                    other.primaryContactNumber, primaryContactNumber)) &&
            (identical(other.communityFundContribution,
                    communityFundContribution) ||
                const DeepCollectionEquality().equals(
                    other.communityFundContribution,
                    communityFundContribution)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(primaryContactNumber) ^
      const DeepCollectionEquality().hash(communityFundContribution) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  $CommunityShopCopyWith<CommunityShop> get copyWith =>
      _$CommunityShopCopyWithImpl<CommunityShop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        member,
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        shop,
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        userContact,
  }) {
    return shop(displayName, walletAddress, primaryContactNumber,
        communityFundContribution, avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        member,
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        shop,
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        userContact,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(displayName, walletAddress, primaryContactNumber,
          communityFundContribution, avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityShop value) shop,
    required TResult Function(UserContact value) userContact,
  }) {
    return shop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityShop value)? shop,
    TResult Function(UserContact value)? userContact,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CommunityShopToJson(this)..['runtimeType'] = 'shop';
  }
}

abstract class CommunityShop implements CommunityEntity {
  factory CommunityShop(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) = _$CommunityShop;

  factory CommunityShop.fromJson(Map<String, dynamic> json) =
      _$CommunityShop.fromJson;

  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get walletAddress => throw _privateConstructorUsedError;
  @override
  String? get primaryContactNumber => throw _privateConstructorUsedError;
  @override
  int get communityFundContribution => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  Uint8List? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CommunityShopCopyWith<CommunityShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserContactCopyWith<$Res>
    implements $CommunityEntityCopyWith<$Res> {
  factory $UserContactCopyWith(
          UserContact value, $Res Function(UserContact) then) =
      _$UserContactCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar});
}

/// @nodoc
class _$UserContactCopyWithImpl<$Res>
    extends _$CommunityEntityCopyWithImpl<$Res>
    implements $UserContactCopyWith<$Res> {
  _$UserContactCopyWithImpl(
      UserContact _value, $Res Function(UserContact) _then)
      : super(_value, (v) => _then(v as UserContact));

  @override
  UserContact get _value => super._value as UserContact;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? walletAddress = freezed,
    Object? primaryContactNumber = freezed,
    Object? communityFundContribution = freezed,
    Object? avatar = freezed,
  }) {
    return _then(UserContact(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContactNumber: primaryContactNumber == freezed
          ? _value.primaryContactNumber
          : primaryContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      communityFundContribution: communityFundContribution == freezed
          ? _value.communityFundContribution
          : communityFundContribution // ignore: cast_nullable_to_non_nullable
              as int,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserContact with DiagnosticableTreeMixin implements UserContact {
  _$UserContact(
      {required this.displayName,
      required this.walletAddress,
      this.primaryContactNumber,
      this.communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) this.avatar});

  factory _$UserContact.fromJson(Map<String, dynamic> json) =>
      _$_$UserContactFromJson(json);

  @override
  final String displayName;
  @override
  final String walletAddress;
  @override
  final String? primaryContactNumber;
  @JsonKey(defaultValue: 0)
  @override
  final int communityFundContribution;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  final Uint8List? avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityEntity.userContact(displayName: $displayName, walletAddress: $walletAddress, primaryContactNumber: $primaryContactNumber, communityFundContribution: $communityFundContribution, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityEntity.userContact'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('primaryContactNumber', primaryContactNumber))
      ..add(DiagnosticsProperty(
          'communityFundContribution', communityFundContribution))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserContact &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.primaryContactNumber, primaryContactNumber) ||
                const DeepCollectionEquality().equals(
                    other.primaryContactNumber, primaryContactNumber)) &&
            (identical(other.communityFundContribution,
                    communityFundContribution) ||
                const DeepCollectionEquality().equals(
                    other.communityFundContribution,
                    communityFundContribution)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(primaryContactNumber) ^
      const DeepCollectionEquality().hash(communityFundContribution) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  $UserContactCopyWith<UserContact> get copyWith =>
      _$UserContactCopyWithImpl<UserContact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        member,
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        shop,
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        userContact,
  }) {
    return userContact(displayName, walletAddress, primaryContactNumber,
        communityFundContribution, avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        member,
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        shop,
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        userContact,
    required TResult orElse(),
  }) {
    if (userContact != null) {
      return userContact(displayName, walletAddress, primaryContactNumber,
          communityFundContribution, avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityShop value) shop,
    required TResult Function(UserContact value) userContact,
  }) {
    return userContact(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityShop value)? shop,
    TResult Function(UserContact value)? userContact,
    required TResult orElse(),
  }) {
    if (userContact != null) {
      return userContact(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserContactToJson(this)..['runtimeType'] = 'userContact';
  }
}

abstract class UserContact implements CommunityEntity {
  factory UserContact(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) = _$UserContact;

  factory UserContact.fromJson(Map<String, dynamic> json) =
      _$UserContact.fromJson;

  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get walletAddress => throw _privateConstructorUsedError;
  @override
  String? get primaryContactNumber => throw _privateConstructorUsedError;
  @override
  int get communityFundContribution => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  Uint8List? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UserContactCopyWith<UserContact> get copyWith =>
      throw _privateConstructorUsedError;
}
