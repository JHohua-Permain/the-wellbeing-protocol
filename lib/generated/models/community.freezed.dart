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
      {required String address,
      required Token primaryToken,
      String communityFund = '0',
      List<CommunityEntity> members = const []}) {
    return _Community(
      address: address,
      primaryToken: primaryToken,
      communityFund: communityFund,
      members: members,
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
  String get address => throw _privateConstructorUsedError;
  Token get primaryToken => throw _privateConstructorUsedError;
  String get communityFund => throw _privateConstructorUsedError;
  List<CommunityEntity> get members => throw _privateConstructorUsedError;

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
      {String address,
      Token primaryToken,
      String communityFund,
      List<CommunityEntity> members});

  $TokenCopyWith<$Res> get primaryToken;
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res> implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  final Community _value;
  // ignore: unused_field
  final $Res Function(Community) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? primaryToken = freezed,
    Object? communityFund = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      primaryToken: primaryToken == freezed
          ? _value.primaryToken
          : primaryToken // ignore: cast_nullable_to_non_nullable
              as Token,
      communityFund: communityFund == freezed
          ? _value.communityFund
          : communityFund // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
    ));
  }

  @override
  $TokenCopyWith<$Res> get primaryToken {
    return $TokenCopyWith<$Res>(_value.primaryToken, (value) {
      return _then(_value.copyWith(primaryToken: value));
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
      {String address,
      Token primaryToken,
      String communityFund,
      List<CommunityEntity> members});

  @override
  $TokenCopyWith<$Res> get primaryToken;
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
    Object? address = freezed,
    Object? primaryToken = freezed,
    Object? communityFund = freezed,
    Object? members = freezed,
  }) {
    return _then(_Community(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      primaryToken: primaryToken == freezed
          ? _value.primaryToken
          : primaryToken // ignore: cast_nullable_to_non_nullable
              as Token,
      communityFund: communityFund == freezed
          ? _value.communityFund
          : communityFund // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<CommunityEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Community with DiagnosticableTreeMixin implements _Community {
  _$_Community(
      {required this.address,
      required this.primaryToken,
      this.communityFund = '0',
      this.members = const []});

  factory _$_Community.fromJson(Map<String, dynamic> json) =>
      _$_$_CommunityFromJson(json);

  @override
  final String address;
  @override
  final Token primaryToken;
  @JsonKey(defaultValue: '0')
  @override
  final String communityFund;
  @JsonKey(defaultValue: const [])
  @override
  final List<CommunityEntity> members;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Community(address: $address, primaryToken: $primaryToken, communityFund: $communityFund, members: $members)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Community'))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('primaryToken', primaryToken))
      ..add(DiagnosticsProperty('communityFund', communityFund))
      ..add(DiagnosticsProperty('members', members));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Community &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.primaryToken, primaryToken) ||
                const DeepCollectionEquality()
                    .equals(other.primaryToken, primaryToken)) &&
            (identical(other.communityFund, communityFund) ||
                const DeepCollectionEquality()
                    .equals(other.communityFund, communityFund)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality().equals(other.members, members)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(primaryToken) ^
      const DeepCollectionEquality().hash(communityFund) ^
      const DeepCollectionEquality().hash(members);

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
      {required String address,
      required Token primaryToken,
      String communityFund,
      List<CommunityEntity> members}) = _$_Community;

  factory _Community.fromJson(Map<String, dynamic> json) =
      _$_Community.fromJson;

  @override
  String get address => throw _privateConstructorUsedError;
  @override
  Token get primaryToken => throw _privateConstructorUsedError;
  @override
  String get communityFund => throw _privateConstructorUsedError;
  @override
  List<CommunityEntity> get members => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunityCopyWith<_Community> get copyWith =>
      throw _privateConstructorUsedError;
}
