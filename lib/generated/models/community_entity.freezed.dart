// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'community_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommunityEntityTearOff {
  const _$CommunityEntityTearOff();

  CommunityMember member(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      String? communityFundContribution,
      Uint8List? avatar}) {
    return CommunityMember(
      displayName: displayName,
      walletAddress: walletAddress,
      primaryContactNumber: primaryContactNumber,
      communityFundContribution: communityFundContribution,
      avatar: avatar,
    );
  }

  CommunityStore store(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      Uint8List? avatar}) {
    return CommunityStore(
      displayName: displayName,
      walletAddress: walletAddress,
      primaryContactNumber: primaryContactNumber,
      avatar: avatar,
    );
  }
}

/// @nodoc
const $CommunityEntity = _$CommunityEntityTearOff();

/// @nodoc
mixin _$CommunityEntity {
  String get displayName => throw _privateConstructorUsedError;
  String get walletAddress => throw _privateConstructorUsedError;
  String? get primaryContactNumber => throw _privateConstructorUsedError;
  Uint8List? get avatar => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            String? communityFundContribution,
            Uint8List? avatar)
        member,
    required TResult Function(String displayName, String walletAddress,
            String? primaryContactNumber, Uint8List? avatar)
        store,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            String? communityFundContribution,
            Uint8List? avatar)?
        member,
    TResult Function(String displayName, String walletAddress,
            String? primaryContactNumber, Uint8List? avatar)?
        store,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityStore value) store,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityStore value)? store,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
      String? communityFundContribution,
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
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$CommunityMember
    with DiagnosticableTreeMixin
    implements CommunityMember {
  _$CommunityMember(
      {required this.displayName,
      required this.walletAddress,
      this.primaryContactNumber,
      this.communityFundContribution,
      this.avatar});

  @override
  final String displayName;
  @override
  final String walletAddress;
  @override
  final String? primaryContactNumber;
  @override
  final String? communityFundContribution;
  @override
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
            String? communityFundContribution,
            Uint8List? avatar)
        member,
    required TResult Function(String displayName, String walletAddress,
            String? primaryContactNumber, Uint8List? avatar)
        store,
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
            String? communityFundContribution,
            Uint8List? avatar)?
        member,
    TResult Function(String displayName, String walletAddress,
            String? primaryContactNumber, Uint8List? avatar)?
        store,
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
    required TResult Function(CommunityStore value) store,
  }) {
    return member(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityStore value)? store,
    required TResult orElse(),
  }) {
    if (member != null) {
      return member(this);
    }
    return orElse();
  }
}

abstract class CommunityMember implements CommunityEntity {
  factory CommunityMember(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      String? communityFundContribution,
      Uint8List? avatar}) = _$CommunityMember;

  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get walletAddress => throw _privateConstructorUsedError;
  @override
  String? get primaryContactNumber => throw _privateConstructorUsedError;
  String? get communityFundContribution => throw _privateConstructorUsedError;
  @override
  Uint8List? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CommunityMemberCopyWith<CommunityMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityStoreCopyWith<$Res>
    implements $CommunityEntityCopyWith<$Res> {
  factory $CommunityStoreCopyWith(
          CommunityStore value, $Res Function(CommunityStore) then) =
      _$CommunityStoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String walletAddress,
      String? primaryContactNumber,
      Uint8List? avatar});
}

/// @nodoc
class _$CommunityStoreCopyWithImpl<$Res>
    extends _$CommunityEntityCopyWithImpl<$Res>
    implements $CommunityStoreCopyWith<$Res> {
  _$CommunityStoreCopyWithImpl(
      CommunityStore _value, $Res Function(CommunityStore) _then)
      : super(_value, (v) => _then(v as CommunityStore));

  @override
  CommunityStore get _value => super._value as CommunityStore;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? walletAddress = freezed,
    Object? primaryContactNumber = freezed,
    Object? avatar = freezed,
  }) {
    return _then(CommunityStore(
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
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$CommunityStore with DiagnosticableTreeMixin implements CommunityStore {
  _$CommunityStore(
      {required this.displayName,
      required this.walletAddress,
      this.primaryContactNumber,
      this.avatar});

  @override
  final String displayName;
  @override
  final String walletAddress;
  @override
  final String? primaryContactNumber;
  @override
  final Uint8List? avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityEntity.store(displayName: $displayName, walletAddress: $walletAddress, primaryContactNumber: $primaryContactNumber, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommunityEntity.store'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('primaryContactNumber', primaryContactNumber))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommunityStore &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.walletAddress, walletAddress) ||
                const DeepCollectionEquality()
                    .equals(other.walletAddress, walletAddress)) &&
            (identical(other.primaryContactNumber, primaryContactNumber) ||
                const DeepCollectionEquality().equals(
                    other.primaryContactNumber, primaryContactNumber)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(walletAddress) ^
      const DeepCollectionEquality().hash(primaryContactNumber) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  $CommunityStoreCopyWith<CommunityStore> get copyWith =>
      _$CommunityStoreCopyWithImpl<CommunityStore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            String? communityFundContribution,
            Uint8List? avatar)
        member,
    required TResult Function(String displayName, String walletAddress,
            String? primaryContactNumber, Uint8List? avatar)
        store,
  }) {
    return store(displayName, walletAddress, primaryContactNumber, avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String displayName,
            String walletAddress,
            String? primaryContactNumber,
            String? communityFundContribution,
            Uint8List? avatar)?
        member,
    TResult Function(String displayName, String walletAddress,
            String? primaryContactNumber, Uint8List? avatar)?
        store,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(displayName, walletAddress, primaryContactNumber, avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommunityMember value) member,
    required TResult Function(CommunityStore value) store,
  }) {
    return store(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommunityMember value)? member,
    TResult Function(CommunityStore value)? store,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(this);
    }
    return orElse();
  }
}

abstract class CommunityStore implements CommunityEntity {
  factory CommunityStore(
      {required String displayName,
      required String walletAddress,
      String? primaryContactNumber,
      Uint8List? avatar}) = _$CommunityStore;

  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get walletAddress => throw _privateConstructorUsedError;
  @override
  String? get primaryContactNumber => throw _privateConstructorUsedError;
  @override
  Uint8List? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CommunityStoreCopyWith<CommunityStore> get copyWith =>
      throw _privateConstructorUsedError;
}
