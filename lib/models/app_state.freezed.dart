// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {required User user,
      required Community community,
      @JsonKey(ignore: true) bool isHandling = false}) {
    return _AppState(
      user: user,
      community: community,
      isHandling: isHandling,
    );
  }

  AppState fromJson(Map<String, Object> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  User get user => throw _privateConstructorUsedError;
  Community get community => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get isHandling => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {User user, Community community, @JsonKey(ignore: true) bool isHandling});

  $UserCopyWith<$Res> get user;
  $CommunityCopyWith<$Res> get community;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? community = freezed,
    Object? isHandling = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      community: community == freezed
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community,
      isHandling: isHandling == freezed
          ? _value.isHandling
          : isHandling // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $CommunityCopyWith<$Res> get community {
    return $CommunityCopyWith<$Res>(_value.community, (value) {
      return _then(_value.copyWith(community: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user, Community community, @JsonKey(ignore: true) bool isHandling});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $CommunityCopyWith<$Res> get community;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? user = freezed,
    Object? community = freezed,
    Object? isHandling = freezed,
  }) {
    return _then(_AppState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      community: community == freezed
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community,
      isHandling: isHandling == freezed
          ? _value.isHandling
          : isHandling // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AppState extends _AppState with DiagnosticableTreeMixin {
  const _$_AppState(
      {required this.user,
      required this.community,
      @JsonKey(ignore: true) this.isHandling = false})
      : super._();

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$_$_AppStateFromJson(json);

  @override
  final User user;
  @override
  final Community community;
  @override
  @JsonKey(ignore: true)
  final bool isHandling;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(user: $user, community: $community, isHandling: $isHandling)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('community', community))
      ..add(DiagnosticsProperty('isHandling', isHandling));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.community, community) ||
                const DeepCollectionEquality()
                    .equals(other.community, community)) &&
            (identical(other.isHandling, isHandling) ||
                const DeepCollectionEquality()
                    .equals(other.isHandling, isHandling)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(community) ^
      const DeepCollectionEquality().hash(isHandling);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppStateToJson(this);
  }
}

abstract class _AppState extends AppState {
  const factory _AppState(
      {required User user,
      required Community community,
      @JsonKey(ignore: true) bool isHandling}) = _$_AppState;
  const _AppState._() : super._();

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  Community get community => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  bool get isHandling => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
