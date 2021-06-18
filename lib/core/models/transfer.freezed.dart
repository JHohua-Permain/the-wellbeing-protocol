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
      {required TransferType type,
      required int timestamp,
      @JsonKey(name: '_id') required String id,
      required String name,
      required String txHash,
      required String status,
      required int blockNumber,
      required String tokenAddress,
      required String from,
      required String to,
      required BigInt value,
      required String tokenName,
      required String tokenSymbol,
      required int tokenDecimal}) {
    return _Transfer(
      type: type,
      timestamp: timestamp,
      id: id,
      name: name,
      txHash: txHash,
      status: status,
      blockNumber: blockNumber,
      tokenAddress: tokenAddress,
      from: from,
      to: to,
      value: value,
      tokenName: tokenName,
      tokenSymbol: tokenSymbol,
      tokenDecimal: tokenDecimal,
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
  TransferType get type => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get txHash => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get blockNumber => throw _privateConstructorUsedError;
  String get tokenAddress => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  BigInt get value => throw _privateConstructorUsedError;
  String get tokenName => throw _privateConstructorUsedError;
  String get tokenSymbol => throw _privateConstructorUsedError;
  int get tokenDecimal => throw _privateConstructorUsedError;

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
      {TransferType type,
      int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String txHash,
      String status,
      int blockNumber,
      String tokenAddress,
      String from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class _$TransferCopyWithImpl<$Res> implements $TransferCopyWith<$Res> {
  _$TransferCopyWithImpl(this._value, this._then);

  final Transfer _value;
  // ignore: unused_field
  final $Res Function(Transfer) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? timestamp = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? txHash = freezed,
    Object? status = freezed,
    Object? blockNumber = freezed,
    Object? tokenAddress = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? value = freezed,
    Object? tokenName = freezed,
    Object? tokenSymbol = freezed,
    Object? tokenDecimal = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransferType,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: txHash == freezed
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: blockNumber == freezed
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int,
      tokenAddress: tokenAddress == freezed
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: tokenName == freezed
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: tokenSymbol == freezed
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: tokenDecimal == freezed
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TransferCopyWith<$Res> implements $TransferCopyWith<$Res> {
  factory _$TransferCopyWith(_Transfer value, $Res Function(_Transfer) then) =
      __$TransferCopyWithImpl<$Res>;
  @override
  $Res call(
      {TransferType type,
      int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String txHash,
      String status,
      int blockNumber,
      String tokenAddress,
      String from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
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
    Object? type = freezed,
    Object? timestamp = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? txHash = freezed,
    Object? status = freezed,
    Object? blockNumber = freezed,
    Object? tokenAddress = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? value = freezed,
    Object? tokenName = freezed,
    Object? tokenSymbol = freezed,
    Object? tokenDecimal = freezed,
  }) {
    return _then(_Transfer(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransferType,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: txHash == freezed
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: blockNumber == freezed
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int,
      tokenAddress: tokenAddress == freezed
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: tokenName == freezed
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: tokenSymbol == freezed
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: tokenDecimal == freezed
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transfer with DiagnosticableTreeMixin implements _Transfer {
  const _$_Transfer(
      {required this.type,
      required this.timestamp,
      @JsonKey(name: '_id') required this.id,
      required this.name,
      required this.txHash,
      required this.status,
      required this.blockNumber,
      required this.tokenAddress,
      required this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal});

  factory _$_Transfer.fromJson(Map<String, dynamic> json) =>
      _$_$_TransferFromJson(json);

  @override
  final TransferType type;
  @override
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String txHash;
  @override
  final String status;
  @override
  final int blockNumber;
  @override
  final String tokenAddress;
  @override
  final String from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transfer(type: $type, timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transfer'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('txHash', txHash))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('blockNumber', blockNumber))
      ..add(DiagnosticsProperty('tokenAddress', tokenAddress))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('tokenName', tokenName))
      ..add(DiagnosticsProperty('tokenSymbol', tokenSymbol))
      ..add(DiagnosticsProperty('tokenDecimal', tokenDecimal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transfer &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.txHash, txHash) ||
                const DeepCollectionEquality().equals(other.txHash, txHash)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.blockNumber, blockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.blockNumber, blockNumber)) &&
            (identical(other.tokenAddress, tokenAddress) ||
                const DeepCollectionEquality()
                    .equals(other.tokenAddress, tokenAddress)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.tokenName, tokenName) ||
                const DeepCollectionEquality()
                    .equals(other.tokenName, tokenName)) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                const DeepCollectionEquality()
                    .equals(other.tokenSymbol, tokenSymbol)) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                const DeepCollectionEquality()
                    .equals(other.tokenDecimal, tokenDecimal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(txHash) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(blockNumber) ^
      const DeepCollectionEquality().hash(tokenAddress) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(tokenName) ^
      const DeepCollectionEquality().hash(tokenSymbol) ^
      const DeepCollectionEquality().hash(tokenDecimal);

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
      {required TransferType type,
      required int timestamp,
      @JsonKey(name: '_id') required String id,
      required String name,
      required String txHash,
      required String status,
      required int blockNumber,
      required String tokenAddress,
      required String from,
      required String to,
      required BigInt value,
      required String tokenName,
      required String tokenSymbol,
      required int tokenDecimal}) = _$_Transfer;

  factory _Transfer.fromJson(Map<String, dynamic> json) = _$_Transfer.fromJson;

  @override
  TransferType get type => throw _privateConstructorUsedError;
  @override
  int get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get txHash => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  int get blockNumber => throw _privateConstructorUsedError;
  @override
  String get tokenAddress => throw _privateConstructorUsedError;
  @override
  String get from => throw _privateConstructorUsedError;
  @override
  String get to => throw _privateConstructorUsedError;
  @override
  BigInt get value => throw _privateConstructorUsedError;
  @override
  String get tokenName => throw _privateConstructorUsedError;
  @override
  String get tokenSymbol => throw _privateConstructorUsedError;
  @override
  int get tokenDecimal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransferCopyWith<_Transfer> get copyWith =>
      throw _privateConstructorUsedError;
}
