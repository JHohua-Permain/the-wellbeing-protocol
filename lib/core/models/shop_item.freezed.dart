// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shop_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopItem _$ShopItemFromJson(Map<String, dynamic> json) {
  return _ShopItem.fromJson(json);
}

/// @nodoc
class _$ShopItemTearOff {
  const _$ShopItemTearOff();

  _ShopItem call(
      {required String name, required int cost, required int stock}) {
    return _ShopItem(
      name: name,
      cost: cost,
      stock: stock,
    );
  }

  ShopItem fromJson(Map<String, Object> json) {
    return ShopItem.fromJson(json);
  }
}

/// @nodoc
const $ShopItem = _$ShopItemTearOff();

/// @nodoc
mixin _$ShopItem {
  String get name => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopItemCopyWith<ShopItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopItemCopyWith<$Res> {
  factory $ShopItemCopyWith(ShopItem value, $Res Function(ShopItem) then) =
      _$ShopItemCopyWithImpl<$Res>;
  $Res call({String name, int cost, int stock});
}

/// @nodoc
class _$ShopItemCopyWithImpl<$Res> implements $ShopItemCopyWith<$Res> {
  _$ShopItemCopyWithImpl(this._value, this._then);

  final ShopItem _value;
  // ignore: unused_field
  final $Res Function(ShopItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
    Object? stock = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ShopItemCopyWith<$Res> implements $ShopItemCopyWith<$Res> {
  factory _$ShopItemCopyWith(_ShopItem value, $Res Function(_ShopItem) then) =
      __$ShopItemCopyWithImpl<$Res>;
  @override
  $Res call({String name, int cost, int stock});
}

/// @nodoc
class __$ShopItemCopyWithImpl<$Res> extends _$ShopItemCopyWithImpl<$Res>
    implements _$ShopItemCopyWith<$Res> {
  __$ShopItemCopyWithImpl(_ShopItem _value, $Res Function(_ShopItem) _then)
      : super(_value, (v) => _then(v as _ShopItem));

  @override
  _ShopItem get _value => super._value as _ShopItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
    Object? stock = freezed,
  }) {
    return _then(_ShopItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopItem with DiagnosticableTreeMixin implements _ShopItem {
  const _$_ShopItem(
      {required this.name, required this.cost, required this.stock});

  factory _$_ShopItem.fromJson(Map<String, dynamic> json) =>
      _$_$_ShopItemFromJson(json);

  @override
  final String name;
  @override
  final int cost;
  @override
  final int stock;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopItem(name: $name, cost: $cost, stock: $stock)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopItem'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cost', cost))
      ..add(DiagnosticsProperty('stock', stock));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopItem &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.stock, stock) ||
                const DeepCollectionEquality().equals(other.stock, stock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(stock);

  @JsonKey(ignore: true)
  @override
  _$ShopItemCopyWith<_ShopItem> get copyWith =>
      __$ShopItemCopyWithImpl<_ShopItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShopItemToJson(this);
  }
}

abstract class _ShopItem implements ShopItem {
  const factory _ShopItem(
      {required String name,
      required int cost,
      required int stock}) = _$_ShopItem;

  factory _ShopItem.fromJson(Map<String, dynamic> json) = _$_ShopItem.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get cost => throw _privateConstructorUsedError;
  @override
  int get stock => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopItemCopyWith<_ShopItem> get copyWith =>
      throw _privateConstructorUsedError;
}
