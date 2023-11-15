// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  List<Product> get productsOriginal => throw _privateConstructorUsedError;
  List<Product> get newProducts => throw _privateConstructorUsedError;
  List<Product> get popularProducts => throw _privateConstructorUsedError;
  List<Product> get productsByCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateDataCopyWith<HomeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateDataCopyWith<$Res> {
  factory $HomeStateDataCopyWith(
          HomeStateData value, $Res Function(HomeStateData) then) =
      _$HomeStateDataCopyWithImpl<$Res, HomeStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Product> products,
      List<Product> productsOriginal,
      List<Product> newProducts,
      List<Product> popularProducts,
      List<Product> productsByCategory});
}

/// @nodoc
class _$HomeStateDataCopyWithImpl<$Res, $Val extends HomeStateData>
    implements $HomeStateDataCopyWith<$Res> {
  _$HomeStateDataCopyWithImpl(this._value, this._then);

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
    Object? productsOriginal = null,
    Object? newProducts = null,
    Object? popularProducts = null,
    Object? productsByCategory = null,
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
      productsOriginal: null == productsOriginal
          ? _value.productsOriginal
          : productsOriginal // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      newProducts: null == newProducts
          ? _value.newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      popularProducts: null == popularProducts
          ? _value.popularProducts
          : popularProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsByCategory: null == productsByCategory
          ? _value.productsByCategory
          : productsByCategory // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateDataImplCopyWith<$Res>
    implements $HomeStateDataCopyWith<$Res> {
  factory _$$HomeStateDataImplCopyWith(
          _$HomeStateDataImpl value, $Res Function(_$HomeStateDataImpl) then) =
      __$$HomeStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Product> products,
      List<Product> productsOriginal,
      List<Product> newProducts,
      List<Product> popularProducts,
      List<Product> productsByCategory});
}

/// @nodoc
class __$$HomeStateDataImplCopyWithImpl<$Res>
    extends _$HomeStateDataCopyWithImpl<$Res, _$HomeStateDataImpl>
    implements _$$HomeStateDataImplCopyWith<$Res> {
  __$$HomeStateDataImplCopyWithImpl(
      _$HomeStateDataImpl _value, $Res Function(_$HomeStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? products = null,
    Object? productsOriginal = null,
    Object? newProducts = null,
    Object? popularProducts = null,
    Object? productsByCategory = null,
  }) {
    return _then(_$HomeStateDataImpl(
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
      productsOriginal: null == productsOriginal
          ? _value._productsOriginal
          : productsOriginal // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      newProducts: null == newProducts
          ? _value._newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      popularProducts: null == popularProducts
          ? _value._popularProducts
          : popularProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsByCategory: null == productsByCategory
          ? _value._productsByCategory
          : productsByCategory // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$HomeStateDataImpl implements _HomeStateData {
  const _$HomeStateDataImpl(
      {this.error = '',
      this.status = StatusType.init,
      final List<Product> products = const [],
      final List<Product> productsOriginal = const [],
      final List<Product> newProducts = const [],
      final List<Product> popularProducts = const [],
      final List<Product> productsByCategory = const []})
      : _products = products,
        _productsOriginal = productsOriginal,
        _newProducts = newProducts,
        _popularProducts = popularProducts,
        _productsByCategory = productsByCategory;

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

  final List<Product> _productsOriginal;
  @override
  @JsonKey()
  List<Product> get productsOriginal {
    if (_productsOriginal is EqualUnmodifiableListView)
      return _productsOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsOriginal);
  }

  final List<Product> _newProducts;
  @override
  @JsonKey()
  List<Product> get newProducts {
    if (_newProducts is EqualUnmodifiableListView) return _newProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newProducts);
  }

  final List<Product> _popularProducts;
  @override
  @JsonKey()
  List<Product> get popularProducts {
    if (_popularProducts is EqualUnmodifiableListView) return _popularProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularProducts);
  }

  final List<Product> _productsByCategory;
  @override
  @JsonKey()
  List<Product> get productsByCategory {
    if (_productsByCategory is EqualUnmodifiableListView)
      return _productsByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsByCategory);
  }

  @override
  String toString() {
    return 'HomeStateData(error: $error, status: $status, products: $products, productsOriginal: $productsOriginal, newProducts: $newProducts, popularProducts: $popularProducts, productsByCategory: $productsByCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._productsOriginal, _productsOriginal) &&
            const DeepCollectionEquality()
                .equals(other._newProducts, _newProducts) &&
            const DeepCollectionEquality()
                .equals(other._popularProducts, _popularProducts) &&
            const DeepCollectionEquality()
                .equals(other._productsByCategory, _productsByCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      status,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_productsOriginal),
      const DeepCollectionEquality().hash(_newProducts),
      const DeepCollectionEquality().hash(_popularProducts),
      const DeepCollectionEquality().hash(_productsByCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateDataImplCopyWith<_$HomeStateDataImpl> get copyWith =>
      __$$HomeStateDataImplCopyWithImpl<_$HomeStateDataImpl>(this, _$identity);
}

abstract class _HomeStateData implements HomeStateData {
  const factory _HomeStateData(
      {final String error,
      final StatusType status,
      final List<Product> products,
      final List<Product> productsOriginal,
      final List<Product> newProducts,
      final List<Product> popularProducts,
      final List<Product> productsByCategory}) = _$HomeStateDataImpl;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<Product> get products;
  @override
  List<Product> get productsOriginal;
  @override
  List<Product> get newProducts;
  @override
  List<Product> get popularProducts;
  @override
  List<Product> get productsByCategory;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateDataImplCopyWith<_$HomeStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeStateData? data});

  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
              as HomeStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
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
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.initial(data: $data)';
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
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
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
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
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
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
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
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HomeState {
  const factory Initial({final HomeStateData? data}) = _$InitialImpl;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$StatusImpl>
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
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$StatusImpl implements Status {
  const _$StatusImpl({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.status(data: $data)';
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
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
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
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
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
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
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
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements HomeState {
  const factory Status({final HomeStateData? data}) = _$StatusImpl;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.getError(data: $data)';
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
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
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
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
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
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
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
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements HomeState {
  const factory GetError({final HomeStateData? data}) = _$GetErrorImpl;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetProductsImpl>
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
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$GetProductsImpl implements GetProducts {
  const _$GetProductsImpl({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.getProducts(data: $data)';
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
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return getProducts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return getProducts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
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
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
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
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
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
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements HomeState {
  const factory GetProducts({final HomeStateData? data}) = _$GetProductsImpl;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetProductsImplCopyWith<_$GetProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPartOfProductsImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$SetPartOfProductsImplCopyWith(_$SetPartOfProductsImpl value,
          $Res Function(_$SetPartOfProductsImpl) then) =
      __$$SetPartOfProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetPartOfProductsImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SetPartOfProductsImpl>
    implements _$$SetPartOfProductsImplCopyWith<$Res> {
  __$$SetPartOfProductsImplCopyWithImpl(_$SetPartOfProductsImpl _value,
      $Res Function(_$SetPartOfProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetPartOfProductsImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$SetPartOfProductsImpl implements SetPartOfProducts {
  const _$SetPartOfProductsImpl({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.setPartOfProducts(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPartOfProductsImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPartOfProductsImplCopyWith<_$SetPartOfProductsImpl> get copyWith =>
      __$$SetPartOfProductsImplCopyWithImpl<_$SetPartOfProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return setPartOfProducts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return setPartOfProducts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (setPartOfProducts != null) {
      return setPartOfProducts(data);
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
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) {
    return setPartOfProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) {
    return setPartOfProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (setPartOfProducts != null) {
      return setPartOfProducts(this);
    }
    return orElse();
  }
}

abstract class SetPartOfProducts implements HomeState {
  const factory SetPartOfProducts({final HomeStateData? data}) =
      _$SetPartOfProductsImpl;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetPartOfProductsImplCopyWith<_$SetPartOfProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetProductsByCategoryImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$SetProductsByCategoryImplCopyWith(
          _$SetProductsByCategoryImpl value,
          $Res Function(_$SetProductsByCategoryImpl) then) =
      __$$SetProductsByCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetProductsByCategoryImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SetProductsByCategoryImpl>
    implements _$$SetProductsByCategoryImplCopyWith<$Res> {
  __$$SetProductsByCategoryImplCopyWithImpl(_$SetProductsByCategoryImpl _value,
      $Res Function(_$SetProductsByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetProductsByCategoryImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$SetProductsByCategoryImpl implements SetProductsByCategory {
  const _$SetProductsByCategoryImpl({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.setProductsByCategory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetProductsByCategoryImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetProductsByCategoryImplCopyWith<_$SetProductsByCategoryImpl>
      get copyWith => __$$SetProductsByCategoryImplCopyWithImpl<
          _$SetProductsByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return setProductsByCategory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return setProductsByCategory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (setProductsByCategory != null) {
      return setProductsByCategory(data);
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
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) {
    return setProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) {
    return setProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (setProductsByCategory != null) {
      return setProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class SetProductsByCategory implements HomeState {
  const factory SetProductsByCategory({final HomeStateData? data}) =
      _$SetProductsByCategoryImpl;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetProductsByCategoryImplCopyWith<_$SetProductsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
