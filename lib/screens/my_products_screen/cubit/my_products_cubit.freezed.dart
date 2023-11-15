// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyProductsStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Product? get delProductResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyProductsStateDataCopyWith<MyProductsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProductsStateDataCopyWith<$Res> {
  factory $MyProductsStateDataCopyWith(
          MyProductsStateData value, $Res Function(MyProductsStateData) then) =
      _$MyProductsStateDataCopyWithImpl<$Res, MyProductsStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Product> products,
      Product? delProductResponse});
}

/// @nodoc
class _$MyProductsStateDataCopyWithImpl<$Res, $Val extends MyProductsStateData>
    implements $MyProductsStateDataCopyWith<$Res> {
  _$MyProductsStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? products = null,
    Object? delProductResponse = freezed,
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
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      delProductResponse: freezed == delProductResponse
          ? _value.delProductResponse
          : delProductResponse // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyProductsStateDataImplCopyWith<$Res>
    implements $MyProductsStateDataCopyWith<$Res> {
  factory _$$MyProductsStateDataImplCopyWith(_$MyProductsStateDataImpl value,
          $Res Function(_$MyProductsStateDataImpl) then) =
      __$$MyProductsStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Product> products,
      Product? delProductResponse});
}

/// @nodoc
class __$$MyProductsStateDataImplCopyWithImpl<$Res>
    extends _$MyProductsStateDataCopyWithImpl<$Res, _$MyProductsStateDataImpl>
    implements _$$MyProductsStateDataImplCopyWith<$Res> {
  __$$MyProductsStateDataImplCopyWithImpl(_$MyProductsStateDataImpl _value,
      $Res Function(_$MyProductsStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? products = null,
    Object? delProductResponse = freezed,
  }) {
    return _then(_$MyProductsStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      delProductResponse: freezed == delProductResponse
          ? _value.delProductResponse
          : delProductResponse // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$MyProductsStateDataImpl
    with DiagnosticableTreeMixin
    implements _MyProductsStateData {
  const _$MyProductsStateDataImpl(
      {this.error = '',
      this.status = StatusType.init,
      final List<Product> products = const [],
      this.delProductResponse})
      : _products = products;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final Product? delProductResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProductsStateData(error: $error, status: $status, products: $products, delProductResponse: $delProductResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyProductsStateData'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('delProductResponse', delProductResponse));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyProductsStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.delProductResponse, delProductResponse) ||
                other.delProductResponse == delProductResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status,
      const DeepCollectionEquality().hash(_products), delProductResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyProductsStateDataImplCopyWith<_$MyProductsStateDataImpl> get copyWith =>
      __$$MyProductsStateDataImplCopyWithImpl<_$MyProductsStateDataImpl>(
          this, _$identity);
}

abstract class _MyProductsStateData implements MyProductsStateData {
  const factory _MyProductsStateData(
      {final String error,
      final StatusType status,
      final List<Product> products,
      final Product? delProductResponse}) = _$MyProductsStateDataImpl;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<Product> get products;
  @override
  Product? get delProductResponse;
  @override
  @JsonKey(ignore: true)
  _$$MyProductsStateDataImplCopyWith<_$MyProductsStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyProductsState {
  MyProductsStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MyProductsStateData? data) initial,
    required TResult Function(MyProductsStateData? data) status,
    required TResult Function(MyProductsStateData? data) getError,
    required TResult Function(MyProductsStateData? data) getProducts,
    required TResult Function(MyProductsStateData? data) delProductById,
    required TResult Function(MyProductsStateData? data) sellProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyProductsStateData? data)? initial,
    TResult? Function(MyProductsStateData? data)? status,
    TResult? Function(MyProductsStateData? data)? getError,
    TResult? Function(MyProductsStateData? data)? getProducts,
    TResult? Function(MyProductsStateData? data)? delProductById,
    TResult? Function(MyProductsStateData? data)? sellProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyProductsStateData? data)? initial,
    TResult Function(MyProductsStateData? data)? status,
    TResult Function(MyProductsStateData? data)? getError,
    TResult Function(MyProductsStateData? data)? getProducts,
    TResult Function(MyProductsStateData? data)? delProductById,
    TResult Function(MyProductsStateData? data)? sellProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(DeleteProduct value) delProductById,
    required TResult Function(SellProduct value) sellProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(DeleteProduct value)? delProductById,
    TResult? Function(SellProduct value)? sellProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(DeleteProduct value)? delProductById,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyProductsStateCopyWith<MyProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProductsStateCopyWith<$Res> {
  factory $MyProductsStateCopyWith(
          MyProductsState value, $Res Function(MyProductsState) then) =
      _$MyProductsStateCopyWithImpl<$Res, MyProductsState>;
  @useResult
  $Res call({MyProductsStateData? data});

  $MyProductsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MyProductsStateCopyWithImpl<$Res, $Val extends MyProductsState>
    implements $MyProductsStateCopyWith<$Res> {
  _$MyProductsStateCopyWithImpl(this._value, this._then);

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
              as MyProductsStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyProductsStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MyProductsStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $MyProductsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyProductsStateData? data});

  @override
  $MyProductsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$InitialImpl>
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
              as MyProductsStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl({this.data});

  @override
  final MyProductsStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProductsState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyProductsState.initial'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(MyProductsStateData? data) initial,
    required TResult Function(MyProductsStateData? data) status,
    required TResult Function(MyProductsStateData? data) getError,
    required TResult Function(MyProductsStateData? data) getProducts,
    required TResult Function(MyProductsStateData? data) delProductById,
    required TResult Function(MyProductsStateData? data) sellProduct,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyProductsStateData? data)? initial,
    TResult? Function(MyProductsStateData? data)? status,
    TResult? Function(MyProductsStateData? data)? getError,
    TResult? Function(MyProductsStateData? data)? getProducts,
    TResult? Function(MyProductsStateData? data)? delProductById,
    TResult? Function(MyProductsStateData? data)? sellProduct,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyProductsStateData? data)? initial,
    TResult Function(MyProductsStateData? data)? status,
    TResult Function(MyProductsStateData? data)? getError,
    TResult Function(MyProductsStateData? data)? getProducts,
    TResult Function(MyProductsStateData? data)? delProductById,
    TResult Function(MyProductsStateData? data)? sellProduct,
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
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(DeleteProduct value) delProductById,
    required TResult Function(SellProduct value) sellProduct,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(DeleteProduct value)? delProductById,
    TResult? Function(SellProduct value)? sellProduct,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(DeleteProduct value)? delProductById,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MyProductsState {
  const factory Initial({final MyProductsStateData? data}) = _$InitialImpl;

  @override
  MyProductsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res>
    implements $MyProductsStateCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyProductsStateData? data});

  @override
  $MyProductsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$StatusImpl>
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
              as MyProductsStateData?,
    ));
  }
}

/// @nodoc

class _$StatusImpl with DiagnosticableTreeMixin implements Status {
  const _$StatusImpl({this.data});

  @override
  final MyProductsStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProductsState.status(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyProductsState.status'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(MyProductsStateData? data) initial,
    required TResult Function(MyProductsStateData? data) status,
    required TResult Function(MyProductsStateData? data) getError,
    required TResult Function(MyProductsStateData? data) getProducts,
    required TResult Function(MyProductsStateData? data) delProductById,
    required TResult Function(MyProductsStateData? data) sellProduct,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyProductsStateData? data)? initial,
    TResult? Function(MyProductsStateData? data)? status,
    TResult? Function(MyProductsStateData? data)? getError,
    TResult? Function(MyProductsStateData? data)? getProducts,
    TResult? Function(MyProductsStateData? data)? delProductById,
    TResult? Function(MyProductsStateData? data)? sellProduct,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyProductsStateData? data)? initial,
    TResult Function(MyProductsStateData? data)? status,
    TResult Function(MyProductsStateData? data)? getError,
    TResult Function(MyProductsStateData? data)? getProducts,
    TResult Function(MyProductsStateData? data)? delProductById,
    TResult Function(MyProductsStateData? data)? sellProduct,
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
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(DeleteProduct value) delProductById,
    required TResult Function(SellProduct value) sellProduct,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(DeleteProduct value)? delProductById,
    TResult? Function(SellProduct value)? sellProduct,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(DeleteProduct value)? delProductById,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements MyProductsState {
  const factory Status({final MyProductsStateData? data}) = _$StatusImpl;

  @override
  MyProductsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $MyProductsStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyProductsStateData? data});

  @override
  $MyProductsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as MyProductsStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl with DiagnosticableTreeMixin implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final MyProductsStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProductsState.getError(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyProductsState.getError'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(MyProductsStateData? data) initial,
    required TResult Function(MyProductsStateData? data) status,
    required TResult Function(MyProductsStateData? data) getError,
    required TResult Function(MyProductsStateData? data) getProducts,
    required TResult Function(MyProductsStateData? data) delProductById,
    required TResult Function(MyProductsStateData? data) sellProduct,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyProductsStateData? data)? initial,
    TResult? Function(MyProductsStateData? data)? status,
    TResult? Function(MyProductsStateData? data)? getError,
    TResult? Function(MyProductsStateData? data)? getProducts,
    TResult? Function(MyProductsStateData? data)? delProductById,
    TResult? Function(MyProductsStateData? data)? sellProduct,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyProductsStateData? data)? initial,
    TResult Function(MyProductsStateData? data)? status,
    TResult Function(MyProductsStateData? data)? getError,
    TResult Function(MyProductsStateData? data)? getProducts,
    TResult Function(MyProductsStateData? data)? delProductById,
    TResult Function(MyProductsStateData? data)? sellProduct,
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
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(DeleteProduct value) delProductById,
    required TResult Function(SellProduct value) sellProduct,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(DeleteProduct value)? delProductById,
    TResult? Function(SellProduct value)? sellProduct,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(DeleteProduct value)? delProductById,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements MyProductsState {
  const factory GetError({final MyProductsStateData? data}) = _$GetErrorImpl;

  @override
  MyProductsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res>
    implements $MyProductsStateCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyProductsStateData? data});

  @override
  $MyProductsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetProductsImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MyProductsStateData?,
    ));
  }
}

/// @nodoc

class _$GetProductsImpl with DiagnosticableTreeMixin implements GetProducts {
  const _$GetProductsImpl({this.data});

  @override
  final MyProductsStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProductsState.getProducts(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyProductsState.getProducts'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsImplCopyWith<_$GetProductsImpl> get copyWith =>
      __$$GetProductsImplCopyWithImpl<_$GetProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MyProductsStateData? data) initial,
    required TResult Function(MyProductsStateData? data) status,
    required TResult Function(MyProductsStateData? data) getError,
    required TResult Function(MyProductsStateData? data) getProducts,
    required TResult Function(MyProductsStateData? data) delProductById,
    required TResult Function(MyProductsStateData? data) sellProduct,
  }) {
    return getProducts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyProductsStateData? data)? initial,
    TResult? Function(MyProductsStateData? data)? status,
    TResult? Function(MyProductsStateData? data)? getError,
    TResult? Function(MyProductsStateData? data)? getProducts,
    TResult? Function(MyProductsStateData? data)? delProductById,
    TResult? Function(MyProductsStateData? data)? sellProduct,
  }) {
    return getProducts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyProductsStateData? data)? initial,
    TResult Function(MyProductsStateData? data)? status,
    TResult Function(MyProductsStateData? data)? getError,
    TResult Function(MyProductsStateData? data)? getProducts,
    TResult Function(MyProductsStateData? data)? delProductById,
    TResult Function(MyProductsStateData? data)? sellProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(DeleteProduct value) delProductById,
    required TResult Function(SellProduct value) sellProduct,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(DeleteProduct value)? delProductById,
    TResult? Function(SellProduct value)? sellProduct,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(DeleteProduct value)? delProductById,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements MyProductsState {
  const factory GetProducts({final MyProductsStateData? data}) =
      _$GetProductsImpl;

  @override
  MyProductsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetProductsImplCopyWith<_$GetProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductImplCopyWith<$Res>
    implements $MyProductsStateCopyWith<$Res> {
  factory _$$DeleteProductImplCopyWith(
          _$DeleteProductImpl value, $Res Function(_$DeleteProductImpl) then) =
      __$$DeleteProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyProductsStateData? data});

  @override
  $MyProductsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DeleteProductImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$DeleteProductImpl>
    implements _$$DeleteProductImplCopyWith<$Res> {
  __$$DeleteProductImplCopyWithImpl(
      _$DeleteProductImpl _value, $Res Function(_$DeleteProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DeleteProductImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MyProductsStateData?,
    ));
  }
}

/// @nodoc

class _$DeleteProductImpl
    with DiagnosticableTreeMixin
    implements DeleteProduct {
  const _$DeleteProductImpl({this.data});

  @override
  final MyProductsStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProductsState.delProductById(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyProductsState.delProductById'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      __$$DeleteProductImplCopyWithImpl<_$DeleteProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MyProductsStateData? data) initial,
    required TResult Function(MyProductsStateData? data) status,
    required TResult Function(MyProductsStateData? data) getError,
    required TResult Function(MyProductsStateData? data) getProducts,
    required TResult Function(MyProductsStateData? data) delProductById,
    required TResult Function(MyProductsStateData? data) sellProduct,
  }) {
    return delProductById(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyProductsStateData? data)? initial,
    TResult? Function(MyProductsStateData? data)? status,
    TResult? Function(MyProductsStateData? data)? getError,
    TResult? Function(MyProductsStateData? data)? getProducts,
    TResult? Function(MyProductsStateData? data)? delProductById,
    TResult? Function(MyProductsStateData? data)? sellProduct,
  }) {
    return delProductById?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyProductsStateData? data)? initial,
    TResult Function(MyProductsStateData? data)? status,
    TResult Function(MyProductsStateData? data)? getError,
    TResult Function(MyProductsStateData? data)? getProducts,
    TResult Function(MyProductsStateData? data)? delProductById,
    TResult Function(MyProductsStateData? data)? sellProduct,
    required TResult orElse(),
  }) {
    if (delProductById != null) {
      return delProductById(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(DeleteProduct value) delProductById,
    required TResult Function(SellProduct value) sellProduct,
  }) {
    return delProductById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(DeleteProduct value)? delProductById,
    TResult? Function(SellProduct value)? sellProduct,
  }) {
    return delProductById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(DeleteProduct value)? delProductById,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) {
    if (delProductById != null) {
      return delProductById(this);
    }
    return orElse();
  }
}

abstract class DeleteProduct implements MyProductsState {
  const factory DeleteProduct({final MyProductsStateData? data}) =
      _$DeleteProductImpl;

  @override
  MyProductsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SellProductImplCopyWith<$Res>
    implements $MyProductsStateCopyWith<$Res> {
  factory _$$SellProductImplCopyWith(
          _$SellProductImpl value, $Res Function(_$SellProductImpl) then) =
      __$$SellProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyProductsStateData? data});

  @override
  $MyProductsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SellProductImplCopyWithImpl<$Res>
    extends _$MyProductsStateCopyWithImpl<$Res, _$SellProductImpl>
    implements _$$SellProductImplCopyWith<$Res> {
  __$$SellProductImplCopyWithImpl(
      _$SellProductImpl _value, $Res Function(_$SellProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SellProductImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MyProductsStateData?,
    ));
  }
}

/// @nodoc

class _$SellProductImpl with DiagnosticableTreeMixin implements SellProduct {
  const _$SellProductImpl({this.data});

  @override
  final MyProductsStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyProductsState.sellProduct(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyProductsState.sellProduct'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SellProductImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SellProductImplCopyWith<_$SellProductImpl> get copyWith =>
      __$$SellProductImplCopyWithImpl<_$SellProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MyProductsStateData? data) initial,
    required TResult Function(MyProductsStateData? data) status,
    required TResult Function(MyProductsStateData? data) getError,
    required TResult Function(MyProductsStateData? data) getProducts,
    required TResult Function(MyProductsStateData? data) delProductById,
    required TResult Function(MyProductsStateData? data) sellProduct,
  }) {
    return sellProduct(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyProductsStateData? data)? initial,
    TResult? Function(MyProductsStateData? data)? status,
    TResult? Function(MyProductsStateData? data)? getError,
    TResult? Function(MyProductsStateData? data)? getProducts,
    TResult? Function(MyProductsStateData? data)? delProductById,
    TResult? Function(MyProductsStateData? data)? sellProduct,
  }) {
    return sellProduct?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyProductsStateData? data)? initial,
    TResult Function(MyProductsStateData? data)? status,
    TResult Function(MyProductsStateData? data)? getError,
    TResult Function(MyProductsStateData? data)? getProducts,
    TResult Function(MyProductsStateData? data)? delProductById,
    TResult Function(MyProductsStateData? data)? sellProduct,
    required TResult orElse(),
  }) {
    if (sellProduct != null) {
      return sellProduct(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(DeleteProduct value) delProductById,
    required TResult Function(SellProduct value) sellProduct,
  }) {
    return sellProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(DeleteProduct value)? delProductById,
    TResult? Function(SellProduct value)? sellProduct,
  }) {
    return sellProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(DeleteProduct value)? delProductById,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) {
    if (sellProduct != null) {
      return sellProduct(this);
    }
    return orElse();
  }
}

abstract class SellProduct implements MyProductsState {
  const factory SellProduct({final MyProductsStateData? data}) =
      _$SellProductImpl;

  @override
  MyProductsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SellProductImplCopyWith<_$SellProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
