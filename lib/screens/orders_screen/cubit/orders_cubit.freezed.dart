// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<Order> get orders => throw _privateConstructorUsedError;
  List<Order> get ordersProcessing => throw _privateConstructorUsedError;
  List<Order> get ordersByStatus => throw _privateConstructorUsedError;
  List<Order> get totalSales => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateDataCopyWith<OrdersStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateDataCopyWith<$Res> {
  factory $OrdersStateDataCopyWith(
          OrdersStateData value, $Res Function(OrdersStateData) then) =
      _$OrdersStateDataCopyWithImpl<$Res, OrdersStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Order> orders,
      List<Order> ordersProcessing,
      List<Order> ordersByStatus,
      List<Order> totalSales});
}

/// @nodoc
class _$OrdersStateDataCopyWithImpl<$Res, $Val extends OrdersStateData>
    implements $OrdersStateDataCopyWith<$Res> {
  _$OrdersStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? orders = null,
    Object? ordersProcessing = null,
    Object? ordersByStatus = null,
    Object? totalSales = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      ordersProcessing: null == ordersProcessing
          ? _value.ordersProcessing
          : ordersProcessing // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      ordersByStatus: null == ordersByStatus
          ? _value.ordersByStatus
          : ordersByStatus // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      totalSales: null == totalSales
          ? _value.totalSales
          : totalSales // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersStateDataImplCopyWith<$Res>
    implements $OrdersStateDataCopyWith<$Res> {
  factory _$$OrdersStateDataImplCopyWith(_$OrdersStateDataImpl value,
          $Res Function(_$OrdersStateDataImpl) then) =
      __$$OrdersStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Order> orders,
      List<Order> ordersProcessing,
      List<Order> ordersByStatus,
      List<Order> totalSales});
}

/// @nodoc
class __$$OrdersStateDataImplCopyWithImpl<$Res>
    extends _$OrdersStateDataCopyWithImpl<$Res, _$OrdersStateDataImpl>
    implements _$$OrdersStateDataImplCopyWith<$Res> {
  __$$OrdersStateDataImplCopyWithImpl(
      _$OrdersStateDataImpl _value, $Res Function(_$OrdersStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? orders = null,
    Object? ordersProcessing = null,
    Object? ordersByStatus = null,
    Object? totalSales = null,
  }) {
    return _then(_$OrdersStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      ordersProcessing: null == ordersProcessing
          ? _value._ordersProcessing
          : ordersProcessing // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      ordersByStatus: null == ordersByStatus
          ? _value._ordersByStatus
          : ordersByStatus // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      totalSales: null == totalSales
          ? _value._totalSales
          : totalSales // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$OrdersStateDataImpl implements _OrdersStateData {
  const _$OrdersStateDataImpl(
      {this.error = '',
      this.status = StatusType.init,
      final List<Order> orders = const [],
      final List<Order> ordersProcessing = const [],
      final List<Order> ordersByStatus = const [],
      final List<Order> totalSales = const []})
      : _orders = orders,
        _ordersProcessing = ordersProcessing,
        _ordersByStatus = ordersByStatus,
        _totalSales = totalSales;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  final List<Order> _orders;
  @override
  @JsonKey()
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<Order> _ordersProcessing;
  @override
  @JsonKey()
  List<Order> get ordersProcessing {
    if (_ordersProcessing is EqualUnmodifiableListView)
      return _ordersProcessing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ordersProcessing);
  }

  final List<Order> _ordersByStatus;
  @override
  @JsonKey()
  List<Order> get ordersByStatus {
    if (_ordersByStatus is EqualUnmodifiableListView) return _ordersByStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ordersByStatus);
  }

  final List<Order> _totalSales;
  @override
  @JsonKey()
  List<Order> get totalSales {
    if (_totalSales is EqualUnmodifiableListView) return _totalSales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_totalSales);
  }

  @override
  String toString() {
    return 'OrdersStateData(error: $error, status: $status, orders: $orders, ordersProcessing: $ordersProcessing, ordersByStatus: $ordersByStatus, totalSales: $totalSales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._ordersProcessing, _ordersProcessing) &&
            const DeepCollectionEquality()
                .equals(other._ordersByStatus, _ordersByStatus) &&
            const DeepCollectionEquality()
                .equals(other._totalSales, _totalSales));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      status,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_ordersProcessing),
      const DeepCollectionEquality().hash(_ordersByStatus),
      const DeepCollectionEquality().hash(_totalSales));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersStateDataImplCopyWith<_$OrdersStateDataImpl> get copyWith =>
      __$$OrdersStateDataImplCopyWithImpl<_$OrdersStateDataImpl>(
          this, _$identity);
}

abstract class _OrdersStateData implements OrdersStateData {
  const factory _OrdersStateData(
      {final String error,
      final StatusType status,
      final List<Order> orders,
      final List<Order> ordersProcessing,
      final List<Order> ordersByStatus,
      final List<Order> totalSales}) = _$OrdersStateDataImpl;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<Order> get orders;
  @override
  List<Order> get ordersProcessing;
  @override
  List<Order> get ordersByStatus;
  @override
  List<Order> get totalSales;
  @override
  @JsonKey(ignore: true)
  _$$OrdersStateDataImplCopyWith<_$OrdersStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  OrdersStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrdersStateData? data) initial,
    required TResult Function(OrdersStateData? data) status,
    required TResult Function(OrdersStateData? data) getError,
    required TResult Function(OrdersStateData? data) getOrders,
    required TResult Function(OrdersStateData? data) getTotalSales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrdersStateData? data)? initial,
    TResult? Function(OrdersStateData? data)? status,
    TResult? Function(OrdersStateData? data)? getError,
    TResult? Function(OrdersStateData? data)? getOrders,
    TResult? Function(OrdersStateData? data)? getTotalSales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrdersStateData? data)? initial,
    TResult Function(OrdersStateData? data)? status,
    TResult Function(OrdersStateData? data)? getError,
    TResult Function(OrdersStateData? data)? getOrders,
    TResult Function(OrdersStateData? data)? getTotalSales,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getOrders,
    required TResult Function(GetTotalSales value) getTotalSales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
    TResult? Function(GetTotalSales value)? getTotalSales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    TResult Function(GetTotalSales value)? getTotalSales,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call({OrdersStateData? data});

  $OrdersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrdersStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrdersStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OrdersStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrdersStateData? data});

  @override
  $OrdersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$InitialImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrdersStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.data});

  @override
  final OrdersStateData? data;

  @override
  String toString() {
    return 'OrdersState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrdersStateData? data) initial,
    required TResult Function(OrdersStateData? data) status,
    required TResult Function(OrdersStateData? data) getError,
    required TResult Function(OrdersStateData? data) getOrders,
    required TResult Function(OrdersStateData? data) getTotalSales,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrdersStateData? data)? initial,
    TResult? Function(OrdersStateData? data)? status,
    TResult? Function(OrdersStateData? data)? getError,
    TResult? Function(OrdersStateData? data)? getOrders,
    TResult? Function(OrdersStateData? data)? getTotalSales,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrdersStateData? data)? initial,
    TResult Function(OrdersStateData? data)? status,
    TResult Function(OrdersStateData? data)? getError,
    TResult Function(OrdersStateData? data)? getOrders,
    TResult Function(OrdersStateData? data)? getTotalSales,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getOrders,
    required TResult Function(GetTotalSales value) getTotalSales,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
    TResult? Function(GetTotalSales value)? getTotalSales,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    TResult Function(GetTotalSales value)? getTotalSales,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OrdersState {
  const factory Initial({final OrdersStateData? data}) = _$InitialImpl;

  @override
  OrdersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrdersStateData? data});

  @override
  $OrdersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StatusImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrdersStateData?,
    ));
  }
}

/// @nodoc

class _$StatusImpl implements Status {
  const _$StatusImpl({this.data});

  @override
  final OrdersStateData? data;

  @override
  String toString() {
    return 'OrdersState.status(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrdersStateData? data) initial,
    required TResult Function(OrdersStateData? data) status,
    required TResult Function(OrdersStateData? data) getError,
    required TResult Function(OrdersStateData? data) getOrders,
    required TResult Function(OrdersStateData? data) getTotalSales,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrdersStateData? data)? initial,
    TResult? Function(OrdersStateData? data)? status,
    TResult? Function(OrdersStateData? data)? getError,
    TResult? Function(OrdersStateData? data)? getOrders,
    TResult? Function(OrdersStateData? data)? getTotalSales,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrdersStateData? data)? initial,
    TResult Function(OrdersStateData? data)? status,
    TResult Function(OrdersStateData? data)? getError,
    TResult Function(OrdersStateData? data)? getOrders,
    TResult Function(OrdersStateData? data)? getTotalSales,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getOrders,
    required TResult Function(GetTotalSales value) getTotalSales,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
    TResult? Function(GetTotalSales value)? getTotalSales,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    TResult Function(GetTotalSales value)? getTotalSales,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements OrdersState {
  const factory Status({final OrdersStateData? data}) = _$StatusImpl;

  @override
  OrdersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrdersStateData? data});

  @override
  $OrdersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$GetErrorImpl>
    implements _$$GetErrorImplCopyWith<$Res> {
  __$$GetErrorImplCopyWithImpl(
      _$GetErrorImpl _value, $Res Function(_$GetErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetErrorImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrdersStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final OrdersStateData? data;

  @override
  String toString() {
    return 'OrdersState.getError(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetErrorImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      __$$GetErrorImplCopyWithImpl<_$GetErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrdersStateData? data) initial,
    required TResult Function(OrdersStateData? data) status,
    required TResult Function(OrdersStateData? data) getError,
    required TResult Function(OrdersStateData? data) getOrders,
    required TResult Function(OrdersStateData? data) getTotalSales,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrdersStateData? data)? initial,
    TResult? Function(OrdersStateData? data)? status,
    TResult? Function(OrdersStateData? data)? getError,
    TResult? Function(OrdersStateData? data)? getOrders,
    TResult? Function(OrdersStateData? data)? getTotalSales,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrdersStateData? data)? initial,
    TResult Function(OrdersStateData? data)? status,
    TResult Function(OrdersStateData? data)? getError,
    TResult Function(OrdersStateData? data)? getOrders,
    TResult Function(OrdersStateData? data)? getTotalSales,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getOrders,
    required TResult Function(GetTotalSales value) getTotalSales,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
    TResult? Function(GetTotalSales value)? getTotalSales,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    TResult Function(GetTotalSales value)? getTotalSales,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements OrdersState {
  const factory GetError({final OrdersStateData? data}) = _$GetErrorImpl;

  @override
  OrdersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrdersStateData? data});

  @override
  $OrdersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetOrdersImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrdersStateData?,
    ));
  }
}

/// @nodoc

class _$GetOrdersImpl implements GetOrders {
  const _$GetOrdersImpl({this.data});

  @override
  final OrdersStateData? data;

  @override
  String toString() {
    return 'OrdersState.getOrders(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersImplCopyWith<_$GetOrdersImpl> get copyWith =>
      __$$GetOrdersImplCopyWithImpl<_$GetOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrdersStateData? data) initial,
    required TResult Function(OrdersStateData? data) status,
    required TResult Function(OrdersStateData? data) getError,
    required TResult Function(OrdersStateData? data) getOrders,
    required TResult Function(OrdersStateData? data) getTotalSales,
  }) {
    return getOrders(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrdersStateData? data)? initial,
    TResult? Function(OrdersStateData? data)? status,
    TResult? Function(OrdersStateData? data)? getError,
    TResult? Function(OrdersStateData? data)? getOrders,
    TResult? Function(OrdersStateData? data)? getTotalSales,
  }) {
    return getOrders?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrdersStateData? data)? initial,
    TResult Function(OrdersStateData? data)? status,
    TResult Function(OrdersStateData? data)? getError,
    TResult Function(OrdersStateData? data)? getOrders,
    TResult Function(OrdersStateData? data)? getTotalSales,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getOrders,
    required TResult Function(GetTotalSales value) getTotalSales,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
    TResult? Function(GetTotalSales value)? getTotalSales,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    TResult Function(GetTotalSales value)? getTotalSales,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class GetOrders implements OrdersState {
  const factory GetOrders({final OrdersStateData? data}) = _$GetOrdersImpl;

  @override
  OrdersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrdersImplCopyWith<_$GetOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTotalSalesImplCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$GetTotalSalesImplCopyWith(
          _$GetTotalSalesImpl value, $Res Function(_$GetTotalSalesImpl) then) =
      __$$GetTotalSalesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrdersStateData? data});

  @override
  $OrdersStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetTotalSalesImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$GetTotalSalesImpl>
    implements _$$GetTotalSalesImplCopyWith<$Res> {
  __$$GetTotalSalesImplCopyWithImpl(
      _$GetTotalSalesImpl _value, $Res Function(_$GetTotalSalesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetTotalSalesImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrdersStateData?,
    ));
  }
}

/// @nodoc

class _$GetTotalSalesImpl implements GetTotalSales {
  const _$GetTotalSalesImpl({this.data});

  @override
  final OrdersStateData? data;

  @override
  String toString() {
    return 'OrdersState.getTotalSales(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTotalSalesImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTotalSalesImplCopyWith<_$GetTotalSalesImpl> get copyWith =>
      __$$GetTotalSalesImplCopyWithImpl<_$GetTotalSalesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrdersStateData? data) initial,
    required TResult Function(OrdersStateData? data) status,
    required TResult Function(OrdersStateData? data) getError,
    required TResult Function(OrdersStateData? data) getOrders,
    required TResult Function(OrdersStateData? data) getTotalSales,
  }) {
    return getTotalSales(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrdersStateData? data)? initial,
    TResult? Function(OrdersStateData? data)? status,
    TResult? Function(OrdersStateData? data)? getError,
    TResult? Function(OrdersStateData? data)? getOrders,
    TResult? Function(OrdersStateData? data)? getTotalSales,
  }) {
    return getTotalSales?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrdersStateData? data)? initial,
    TResult Function(OrdersStateData? data)? status,
    TResult Function(OrdersStateData? data)? getError,
    TResult Function(OrdersStateData? data)? getOrders,
    TResult Function(OrdersStateData? data)? getTotalSales,
    required TResult orElse(),
  }) {
    if (getTotalSales != null) {
      return getTotalSales(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getOrders,
    required TResult Function(GetTotalSales value) getTotalSales,
  }) {
    return getTotalSales(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
    TResult? Function(GetTotalSales value)? getTotalSales,
  }) {
    return getTotalSales?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    TResult Function(GetTotalSales value)? getTotalSales,
    required TResult orElse(),
  }) {
    if (getTotalSales != null) {
      return getTotalSales(this);
    }
    return orElse();
  }
}

abstract class GetTotalSales implements OrdersState {
  const factory GetTotalSales({final OrdersStateData? data}) =
      _$GetTotalSalesImpl;

  @override
  OrdersStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetTotalSalesImplCopyWith<_$GetTotalSalesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
