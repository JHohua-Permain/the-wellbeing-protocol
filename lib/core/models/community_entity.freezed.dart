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
    case 'default':
      return _CommunityEntity.fromJson(json);
    case 'member':
      return CommunityMember.fromJson(json);
    case 'shop':
      return CommunityShop.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$CommunityEntityTearOff {
  const _$CommunityEntityTearOff();

  _CommunityEntity call(
      {required String walletAddress,
      String? primaryContactNum,
      String displayName = '',
      int communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) {
    return _CommunityEntity(
      walletAddress: walletAddress,
      primaryContactNum: primaryContactNum,
      displayName: displayName,
      communityFundContribution: communityFundContribution,
      avatar: avatar,
    );
  }

  CommunityMember member(
      {required String walletAddress,
      String? primaryContactNum,
      String displayName = '',
      int communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) {
    return CommunityMember(
      walletAddress: walletAddress,
      primaryContactNum: primaryContactNum,
      displayName: displayName,
      communityFundContribution: communityFundContribution,
      avatar: avatar,
    );
  }

  CommunityShop shop(
      {required String walletAddress,
      required List<String> locations,
      String? primaryContactNum,
      String displayName = '',
      Map<String, ShopItem> items = const {},
      int communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) {
    return CommunityShop(
      walletAddress: walletAddress,
      locations: locations,
      primaryContactNum: primaryContactNum,
      displayName: displayName,
      items: items,
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
  String get walletAddress => throw _privateConstructorUsedError;
  String? get primaryContactNum => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  int get communityFundContribution => throw _privateConstructorUsedError;
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  Uint8List? get avatar => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        $default, {
    required TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        member,
    required TResult Function(
            String walletAddress,
            List<String> locations,
            String? primaryContactNum,
            String displayName,
            Map<String, ShopItem> items,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        shop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        $default, {
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        member,
    TResult Function(
            String walletAddress,
            List<String> locations,
            String? primaryContactNum,
            String displayName,
            Map<String, ShopItem> items,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        shop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CommunityEntity value) $default, {
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityShop value) shop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CommunityEntity value)? $default, {
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityShop value)? shop,
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
      {String walletAddress,
      String? primaryContactNum,
      String displayName,
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
    Object? walletAddress = freezed,
    Object? primaryContactNum = freezed,
    Object? displayName = freezed,
    Object? communityFundContribution = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContactNum: primaryContactNum == freezed
          ? _value.primaryContactNum
          : primaryContactNum // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$CommunityEntityCopyWith<$Res>
    implements $CommunityEntityCopyWith<$Res> {
  factory _$CommunityEntityCopyWith(
          _CommunityEntity value, $Res Function(_CommunityEntity) then) =
      __$CommunityEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String walletAddress,
      String? primaryContactNum,
      String displayName,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar});
}

/// @nodoc
class __$CommunityEntityCopyWithImpl<$Res>
    extends _$CommunityEntityCopyWithImpl<$Res>
    implements _$CommunityEntityCopyWith<$Res> {
  __$CommunityEntityCopyWithImpl(
      _CommunityEntity _value, $Res Function(_CommunityEntity) _then)
      : super(_value, (v) => _then(v as _CommunityEntity));

  @override
  _CommunityEntity get _value => super._value as _CommunityEntity;

  @override
  $Res call({
    Object? walletAddress = freezed,
    Object? primaryContactNum = freezed,
    Object? displayName = freezed,
    Object? communityFundContribution = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_CommunityEntity(
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContactNum: primaryContactNum == freezed
          ? _value.primaryContactNum
          : primaryContactNum // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_CommunityEntity
    with DiagnosticableTreeMixin
    implements _CommunityEntity {
  const _$_CommunityEntity(
      {required this.walletAddress,
      this.primaryContactNum,
      this.displayName = '',
      this.communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) this.avatar});

  factory _$_CommunityEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CommunityEntityFromJson(json);

  @override
  final String walletAddress;
  @override
  final String? primaryContactNum;
  @JsonKey(defaultValue: '')
  @override
  final String displayName;
  @JsonKey(defaultValue: 0)
  @override
  final int communityFundContribution;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  final Uint8List? avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityEntity(walletAddress: $walletAddress, primaryContactNum: $primaryContactNum, displayName: $displayName, communityFundContribution: $communityFundContribution, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityEntity'))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('primaryContactNum', primaryContactNum))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty(
          'communityFundContribution', communityFundContribution))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommunityEntity &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.primaryContactNum, primaryContactNum) ||
                const DeepCollectionEquality()
                    .equals(other.primaryContactNum, primaryContactNum)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
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
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(primaryContactNum) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(communityFundContribution) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  _$CommunityEntityCopyWith<_CommunityEntity> get copyWith =>
      __$CommunityEntityCopyWithImpl<_CommunityEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        $default, {
    required TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        member,
    required TResult Function(
            String walletAddress,
            List<String> locations,
            String? primaryContactNum,
            String displayName,
            Map<String, ShopItem> items,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        shop,
  }) {
    return $default(walletAddress, primaryContactNum, displayName,
        communityFundContribution, avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        $default, {
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        member,
    TResult Function(
            String walletAddress,
            List<String> locations,
            String? primaryContactNum,
            String displayName,
            Map<String, ShopItem> items,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        shop,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(walletAddress, primaryContactNum, displayName,
          communityFundContribution, avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CommunityEntity value) $default, {
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityShop value) shop,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CommunityEntity value)? $default, {
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityShop value)? shop,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommunityEntityToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _CommunityEntity implements CommunityEntity {
  const factory _CommunityEntity(
      {required String walletAddress,
      String? primaryContactNum,
      String displayName,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) = _$_CommunityEntity;

  factory _CommunityEntity.fromJson(Map<String, dynamic> json) =
      _$_CommunityEntity.fromJson;

  @override
  String get walletAddress => throw _privateConstructorUsedError;
  @override
  String? get primaryContactNum => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  int get communityFundContribution => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  Uint8List? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunityEntityCopyWith<_CommunityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityMemberCopyWith<$Res>
    implements $CommunityEntityCopyWith<$Res> {
  factory $CommunityMemberCopyWith(
          CommunityMember value, $Res Function(CommunityMember) then) =
      _$CommunityMemberCopyWithImpl<$Res>;
  @override
  $Res call(
      {String walletAddress,
      String? primaryContactNum,
      String displayName,
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
    Object? walletAddress = freezed,
    Object? primaryContactNum = freezed,
    Object? displayName = freezed,
    Object? communityFundContribution = freezed,
    Object? avatar = freezed,
  }) {
    return _then(CommunityMember(
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContactNum: primaryContactNum == freezed
          ? _value.primaryContactNum
          : primaryContactNum // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
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
  const _$CommunityMember(
      {required this.walletAddress,
      this.primaryContactNum,
      this.displayName = '',
      this.communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) this.avatar});

  factory _$CommunityMember.fromJson(Map<String, dynamic> json) =>
      _$_$CommunityMemberFromJson(json);

  @override
  final String walletAddress;
  @override
  final String? primaryContactNum;
  @JsonKey(defaultValue: '')
  @override
  final String displayName;
  @JsonKey(defaultValue: 0)
  @override
  final int communityFundContribution;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  final Uint8List? avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityEntity.member(walletAddress: $walletAddress, primaryContactNum: $primaryContactNum, displayName: $displayName, communityFundContribution: $communityFundContribution, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityEntity.member'))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('primaryContactNum', primaryContactNum))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty(
          'communityFundContribution', communityFundContribution))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommunityMember &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.primaryContactNum, primaryContactNum) ||
                const DeepCollectionEquality()
                    .equals(other.primaryContactNum, primaryContactNum)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
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
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(primaryContactNum) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(communityFundContribution) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  $CommunityMemberCopyWith<CommunityMember> get copyWith =>
      _$CommunityMemberCopyWithImpl<CommunityMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        $default, {
    required TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        member,
    required TResult Function(
            String walletAddress,
            List<String> locations,
            String? primaryContactNum,
            String displayName,
            Map<String, ShopItem> items,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        shop,
  }) {
    return member(walletAddress, primaryContactNum, displayName,
        communityFundContribution, avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        $default, {
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        member,
    TResult Function(
            String walletAddress,
            List<String> locations,
            String? primaryContactNum,
            String displayName,
            Map<String, ShopItem> items,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        shop,
    required TResult orElse(),
  }) {
    if (member != null) {
      return member(walletAddress, primaryContactNum, displayName,
          communityFundContribution, avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CommunityEntity value) $default, {
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityShop value) shop,
  }) {
    return member(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CommunityEntity value)? $default, {
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityShop value)? shop,
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
  const factory CommunityMember(
      {required String walletAddress,
      String? primaryContactNum,
      String displayName,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) = _$CommunityMember;

  factory CommunityMember.fromJson(Map<String, dynamic> json) =
      _$CommunityMember.fromJson;

  @override
  String get walletAddress => throw _privateConstructorUsedError;
  @override
  String? get primaryContactNum => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
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
      {String walletAddress,
      List<String> locations,
      String? primaryContactNum,
      String displayName,
      Map<String, ShopItem> items,
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
    Object? walletAddress = freezed,
    Object? locations = freezed,
    Object? primaryContactNum = freezed,
    Object? displayName = freezed,
    Object? items = freezed,
    Object? communityFundContribution = freezed,
    Object? avatar = freezed,
  }) {
    return _then(CommunityShop(
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      primaryContactNum: primaryContactNum == freezed
          ? _value.primaryContactNum
          : primaryContactNum // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, ShopItem>,
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
  const _$CommunityShop(
      {required this.walletAddress,
      required this.locations,
      this.primaryContactNum,
      this.displayName = '',
      this.items = const {},
      this.communityFundContribution = 0,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson) this.avatar});

  factory _$CommunityShop.fromJson(Map<String, dynamic> json) =>
      _$_$CommunityShopFromJson(json);

  @override
  final String walletAddress;
  @override
  final List<String> locations;
  @override
  final String? primaryContactNum;
  @JsonKey(defaultValue: '')
  @override
  final String displayName;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, ShopItem> items;
  @JsonKey(defaultValue: 0)
  @override
  final int communityFundContribution;
  @override
  @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
  final Uint8List? avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityEntity.shop(walletAddress: $walletAddress, locations: $locations, primaryContactNum: $primaryContactNum, displayName: $displayName, items: $items, communityFundContribution: $communityFundContribution, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityEntity.shop'))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('locations', locations))
      ..add(DiagnosticsProperty('primaryContactNum', primaryContactNum))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty(
          'communityFundContribution', communityFundContribution))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommunityShop &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
            (identical(other.primaryContactNum, primaryContactNum) ||
                const DeepCollectionEquality()
                    .equals(other.primaryContactNum, primaryContactNum)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
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
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(primaryContactNum) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(communityFundContribution) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  $CommunityShopCopyWith<CommunityShop> get copyWith =>
      _$CommunityShopCopyWithImpl<CommunityShop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        $default, {
    required TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        member,
    required TResult Function(
            String walletAddress,
            List<String> locations,
            String? primaryContactNum,
            String displayName,
            Map<String, ShopItem> items,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)
        shop,
  }) {
    return shop(walletAddress, locations, primaryContactNum, displayName, items,
        communityFundContribution, avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        $default, {
    TResult Function(
            String walletAddress,
            String? primaryContactNum,
            String displayName,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        member,
    TResult Function(
            String walletAddress,
            List<String> locations,
            String? primaryContactNum,
            String displayName,
            Map<String, ShopItem> items,
            int communityFundContribution,
            @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
                Uint8List? avatar)?
        shop,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(walletAddress, locations, primaryContactNum, displayName,
          items, communityFundContribution, avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CommunityEntity value) $default, {
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityShop value) shop,
  }) {
    return shop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CommunityEntity value)? $default, {
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityShop value)? shop,
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
  const factory CommunityShop(
      {required String walletAddress,
      required List<String> locations,
      String? primaryContactNum,
      String displayName,
      Map<String, ShopItem> items,
      int communityFundContribution,
      @JsonKey(fromJson: avatarFromJson, toJson: avatarToJson)
          Uint8List? avatar}) = _$CommunityShop;

  factory CommunityShop.fromJson(Map<String, dynamic> json) =
      _$CommunityShop.fromJson;

  @override
  String get walletAddress => throw _privateConstructorUsedError;
  List<String> get locations => throw _privateConstructorUsedError;
  @override
  String? get primaryContactNum => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  Map<String, ShopItem> get items => throw _privateConstructorUsedError;
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
