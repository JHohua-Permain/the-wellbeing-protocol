// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transfer _$TransferFromJson(Map<String, dynamic> json) {
  return _Transfer.fromJson(json);
}

/// @nodoc
class _$TransferTearOff {
  const _$TransferTearOff();

  _Transfer call(
      {required String from,
      required String to,
      required String tokenAddress,
      String? txHash,
      required BigInt value,
      required int timestamp,
      required String status,
      int? blockNumber,
      required String type}) {
    return _Transfer(
      from: from,
      to: to,
      tokenAddress: tokenAddress,
      txHash: txHash,
      value: value,
      timestamp: timestamp,
      status: status,
      blockNumber: blockNumber,
      type: type,
    );
  }

  Transfer fromJson(Map<String, Object> json) {
    return Transfer.fromJson(json);
  }
}

/// @nodoc
const $Transfer = _$TransferTearOff();

/// @nodoc
mixin _$Transfer {
  String get from =>
      throw _privateConstructorUsedError; // required String isSwap,
  String get to => throw _privateConstructorUsedError;
  String get tokenAddress => throw _privateConstructorUsedError;
  String? get txHash => throw _privateConstructorUsedError;
  BigInt get value => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int? get blockNumber => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferCopyWith<Transfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferCopyWith<$Res> {
  factory $TransferCopyWith(Transfer value, $Res Function(Transfer) then) =
      _$TransferCopyWithImpl<$Res>;
  $Res call(
      {String from,
      String to,
      String tokenAddress,
      String? txHash,
      BigInt value,
      int timestamp,
      String status,
      int? blockNumber,
      String type});
}

/// @nodoc
class _$TransferCopyWithImpl<$Res> implements $TransferCopyWith<$Res> {
  _$TransferCopyWithImpl(this._value, this._then);

  final Transfer _value;
  // ignore: unused_field
  final $Res Function(Transfer) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? tokenAddress = freezed,
    Object? txHash = freezed,
    Object? value = freezed,
    Object? timestamp = freezed,
    Object? status = freezed,
    Object? blockNumber = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAddress: tokenAddress == freezed
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: txHash == freezed
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: blockNumber == freezed
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TransferCopyWith<$Res> implements $TransferCopyWith<$Res> {
  factory _$TransferCopyWith(_Transfer value, $Res Function(_Transfer) then) =
      __$TransferCopyWithImpl<$Res>;
  @override
  $Res call(
      {String from,
      String to,
      String tokenAddress,
      String? txHash,
      BigInt value,
      int timestamp,
      String status,
      int? blockNumber,
      String type});
}

/// @nodoc
class __$TransferCopyWithImpl<$Res> extends _$TransferCopyWithImpl<$Res>
    implements _$TransferCopyWith<$Res> {
  __$TransferCopyWithImpl(_Transfer _value, $Res Function(_Transfer) _then)
      : super(_value, (v) => _then(v as _Transfer));

  @override
  _Transfer get _value => super._value as _Transfer;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? tokenAddress = freezed,
    Object? txHash = freezed,
    Object? value = freezed,
    Object? timestamp = freezed,
    Object? status = freezed,
    Object? blockNumber = freezed,
    Object? type = freezed,
  }) {
    return _then(_Transfer(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAddress: tokenAddress == freezed
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: txHash == freezed
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: blockNumber == freezed
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transfer with DiagnosticableTreeMixin implements _Transfer {
  const _$_Transfer(
      {required this.from,
      required this.to,
      required this.tokenAddress,
      this.txHash,
      required this.value,
      required this.timestamp,
      required this.status,
      this.blockNumber,
      required this.type});

  factory _$_Transfer.fromJson(Map<String, dynamic> json) =>
      _$_$_TransferFromJson(json);

  @override
  final String from;
  @override // required String isSwap,
  final String to;
  @override
  final String tokenAddress;
  @override
  final String? txHash;
  @override
  final BigInt value;
  @override
  final int timestamp;
  @override
  final String status;
  @override
  final int? blockNumber;
  @override
  final String type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transfer(from: $from, to: $to, tokenAddress: $tokenAddress, txHash: $txHash, value: $value, timestamp: $timestamp, status: $status, blockNumber: $blockNumber, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transfer'))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('tokenAddress', tokenAddress))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('blockNumber', blockNumber))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transfer &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.tokenAddress, tokenAddress) ||
                const DeepCollectionEquality()
                    .equals(other.tokenAddress, tokenAddress)) &&
            (identical(other.txHash, txHash) ||
                const DeepCollectionEquality().equals(other.txHash, txHash)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.blockNumber, blockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.blockNumber, blockNumber)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(tokenAddress) ^
      const DeepCollectionEquality().hash(txHash) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(blockNumber) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$TransferCopyWith<_Transfer> get copyWith =>
      __$TransferCopyWithImpl<_Transfer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransferToJson(this);
  }
}

abstract class _Transfer implements Transfer {
  const factory _Transfer(
      {required String from,
      required String to,
      required String tokenAddress,
      String? txHash,
      required BigInt value,
      required int timestamp,
      required String status,
      int? blockNumber,
      required String type}) = _$_Transfer;

  factory _Transfer.fromJson(Map<String, dynamic> json) = _$_Transfer.fromJson;

  @override
  String get from => throw _privateConstructorUsedError;
  @override // required String isSwap,
  String get to => throw _privateConstructorUsedError;
  @override
  String get tokenAddress => throw _privateConstructorUsedError;
  @override
  String? get txHash => throw _privateConstructorUsedError;
  @override
  BigInt get value => throw _privateConstructorUsedError;
  @override
  int get timestamp => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  int? get blockNumber => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransferCopyWith<_Transfer> get copyWith =>
      throw _privateConstructorUsedError;
}
