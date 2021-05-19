// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'community.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Community _$CommunityFromJson(Map<String, dynamic> json) {
  return _Community.fromJson(json);
}

/// @nodoc
class _$CommunityTearOff {
  const _$CommunityTearOff();

  _Community call(
      {required String communityAddress,
      required Token homeToken,
      String communityFund = '0',
      List<CommunityEntity> members = const [],
      List<CommunityShop> shops = const []}) {
    return _Community(
      communityAddress: communityAddress,
      homeToken: homeToken,
      communityFund: communityFund,
      members: members,
      shops: shops,
    );
  }

  Community fromJson(Map<String, Object> json) {
    return Community.fromJson(json);
  }
}

/// @nodoc
const $Community = _$CommunityTearOff();

/// @nodoc
mixin _$Community {
  String get communityAddress => throw _privateConstructorUsedError;
  Token get homeToken => throw _privateConstructorUsedError;
  String get communityFund => throw _privateConstructorUsedError;
  List<CommunityEntity> get members => throw _privateConstructorUsedError;
  List<CommunityShop> get shops => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityCopyWith<Community> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityCopyWith<$Res> {
  factory $CommunityCopyWith(Community value, $Res Function(Community) then) =
      _$CommunityCopyWithImpl<$Res>;
  $Res call(
      {String communityAddress,
      Token homeToken,
      String communityFund,
      List<CommunityEntity> members,
      List<CommunityShop> shops});

  $TokenCopyWith<$Res> get homeToken;
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res> implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  final Community _value;
  // ignore: unused_field
  final $Res Function(Community) _then;

  @override
  $Res call({
    Object? communityAddress = freezed,
    Object? homeToken = freezed,
    Object? communityFund = freezed,
    Object? members = freezed,
    Object? shops = freezed,
  }) {
    return _then(_value.copyWith(
      communityAddress: communityAddress == freezed
          ? _value.communityAddress
          : communityAddress // ignore: cast_nullable_to_non_nullable
              as String,
      homeToken: homeToken == freezed
          ? _value.homeToken
          : homeToken // ignore: cast_nullable_to_non_nullable
              as Token,
      communityFund: communityFund == freezed
          ? _value.communityFund
          : communityFund // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
      shops: shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<CommunityShop>,
    ));
  }

  @override
  $TokenCopyWith<$Res> get homeToken {
    return $TokenCopyWith<$Res>(_value.homeToken, (value) {
      return _then(_value.copyWith(homeToken: value));
    });
  }
}

/// @nodoc
abstract class _$CommunityCopyWith<$Res> implements $CommunityCopyWith<$Res> {
  factory _$CommunityCopyWith(
          _Community value, $Res Function(_Community) then) =
      __$CommunityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String communityAddress,
      Token homeToken,
      String communityFund,
      List<CommunityEntity> members,
      List<CommunityShop> shops});

  @override
  $TokenCopyWith<$Res> get homeToken;
}

/// @nodoc
class __$CommunityCopyWithImpl<$Res> extends _$CommunityCopyWithImpl<$Res>
    implements _$CommunityCopyWith<$Res> {
  __$CommunityCopyWithImpl(_Community _value, $Res Function(_Community) _then)
      : super(_value, (v) => _then(v as _Community));

  @override
  _Community get _value => super._value as _Community;

  @override
  $Res call({
    Object? communityAddress = freezed,
    Object? homeToken = freezed,
    Object? communityFund = freezed,
    Object? members = freezed,
    Object? shops = freezed,
  }) {
    return _then(_Community(
      communityAddress: communityAddress == freezed
          ? _value.communityAddress
          : communityAddress // ignore: cast_nullable_to_non_nullable
              as String,
      homeToken: homeToken == freezed
          ? _value.homeToken
          : homeToken // ignore: cast_nullable_to_non_nullable
              as Token,
      communityFund: communityFund == freezed
          ? _value.communityFund
          : communityFund // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
      shops: shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<CommunityShop>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Community with DiagnosticableTreeMixin implements _Community {
  _$_Community(
      {required this.communityAddress,
      required this.homeToken,
      this.communityFund = '0',
      this.members = const [],
      this.shops = const []});

  factory _$_Community.fromJson(Map<String, dynamic> json) =>
      _$_$_CommunityFromJson(json);

  @override
  final String communityAddress;
  @override
  final Token homeToken;
  @JsonKey(defaultValue: '0')
  @override
  final String communityFund;
  @JsonKey(defaultValue: const [])
  @override
  final List<CommunityEntity> members;
  @JsonKey(defaultValue: const [])
  @override
  final List<CommunityShop> shops;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Community(communityAddress: $communityAddress, homeToken: $homeToken, communityFund: $communityFund, members: $members, shops: $shops)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Community'))
      ..add(DiagnosticsProperty('communityAddress', communityAddress))
      ..add(DiagnosticsProperty('homeToken', homeToken))
      ..add(DiagnosticsProperty('communityFund', communityFund))
      ..add(DiagnosticsProperty('members', members))
      ..add(DiagnosticsProperty('shops', shops));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Community &&
            (identical(other.communityAddress, communityAddress) ||
                const DeepCollectionEquality()
                    .equals(other.communityAddress, communityAddress)) &&
            (identical(other.homeToken, homeToken) ||
                const DeepCollectionEquality()
                    .equals(other.homeToken, homeToken)) &&
            (identical(other.communityFund, communityFund) ||
                const DeepCollectionEquality()
                    .equals(other.communityFund, communityFund)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality()
                    .equals(other.members, members)) &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(communityAddress) ^
      const DeepCollectionEquality().hash(homeToken) ^
      const DeepCollectionEquality().hash(communityFund) ^
      const DeepCollectionEquality().hash(members) ^
      const DeepCollectionEquality().hash(shops);

  @JsonKey(ignore: true)
  @override
  _$CommunityCopyWith<_Community> get copyWith =>
      __$CommunityCopyWithImpl<_Community>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommunityToJson(this);
  }
}

abstract class _Community implements Community {
  factory _Community(
      {required String communityAddress,
      required Token homeToken,
      String communityFund,
      List<CommunityEntity> members,
      List<CommunityShop> shops}) = _$_Community;

  factory _Community.fromJson(Map<String, dynamic> json) =
      _$_Community.fromJson;

  @override
  String get communityAddress => throw _privateConstructorUsedError;
  @override
  Token get homeToken => throw _privateConstructorUsedError;
  @override
  String get communityFund => throw _privateConstructorUsedError;
  @override
  List<CommunityEntity> get members => throw _privateConstructorUsedError;
  @override
  List<CommunityShop> get shops => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunityCopyWith<_Community> get copyWith =>
      throw _privateConstructorUsedError;
}
