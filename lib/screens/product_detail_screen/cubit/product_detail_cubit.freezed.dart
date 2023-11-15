// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  int get indexSize => throw _privateConstructorUsedError;
  int get indexColor => throw _privateConstructorUsedError;
  int? get available => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateDataCopyWith<ProductDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateDataCopyWith<$Res> {
  factory $ProductDetailStateDataCopyWith(ProductDetailStateData value,
          $Res Function(ProductDetailStateData) then) =
      _$ProductDetailStateDataCopyWithImpl<$Res, ProductDetailStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      int indexSize,
      int indexColor,
      int? available});
}

/// @nodoc
class _$ProductDetailStateDataCopyWithImpl<$Res,
        $Val extends ProductDetailStateData>
    implements $ProductDetailStateDataCopyWith<$Res> {
  _$ProductDetailStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? indexSize = null,
    Object? indexColor = null,
    Object? available = freezed,
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
      indexSize: null == indexSize
          ? _value.indexSize
          : indexSize // ignore: cast_nullable_to_non_nullable
              as int,
      indexColor: null == indexColor
          ? _value.indexColor
          : indexColor // ignore: cast_nullable_to_non_nullable
              as int,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailStateDataImplCopyWith<$Res>
    implements $ProductDetailStateDataCopyWith<$Res> {
  factory _$$ProductDetailStateDataImplCopyWith(
          _$ProductDetailStateDataImpl value,
          $Res Function(_$ProductDetailStateDataImpl) then) =
      __$$ProductDetailStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      int indexSize,
      int indexColor,
      int? available});
}

/// @nodoc
class __$$ProductDetailStateDataImplCopyWithImpl<$Res>
    extends _$ProductDetailStateDataCopyWithImpl<$Res,
        _$ProductDetailStateDataImpl>
    implements _$$ProductDetailStateDataImplCopyWith<$Res> {
  __$$ProductDetailStateDataImplCopyWithImpl(
      _$ProductDetailStateDataImpl _value,
      $Res Function(_$ProductDetailStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? indexSize = null,
    Object? indexColor = null,
    Object? available = freezed,
  }) {
    return _then(_$ProductDetailStateDataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      indexSize: null == indexSize
          ? _value.indexSize
          : indexSize // ignore: cast_nullable_to_non_nullable
              as int,
      indexColor: null == indexColor
          ? _value.indexColor
          : indexColor // ignore: cast_nullable_to_non_nullable
              as int,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ProductDetailStateDataImpl implements _ProductDetailStateData {
  const _$ProductDetailStateDataImpl(
      {this.error = '',
      this.status = StatusType.init,
      this.indexSize = 0,
      this.indexColor = 0,
      this.available});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final int indexSize;
  @override
  @JsonKey()
  final int indexColor;
  @override
  final int? available;

  @override
  String toString() {
    return 'ProductDetailStateData(error: $error, status: $status, indexSize: $indexSize, indexColor: $indexColor, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailStateDataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.indexSize, indexSize) ||
                other.indexSize == indexSize) &&
            (identical(other.indexColor, indexColor) ||
                other.indexColor == indexColor) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, status, indexSize, indexColor, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailStateDataImplCopyWith<_$ProductDetailStateDataImpl>
      get copyWith => __$$ProductDetailStateDataImplCopyWithImpl<
          _$ProductDetailStateDataImpl>(this, _$identity);
}

abstract class _ProductDetailStateData implements ProductDetailStateData {
  const factory _ProductDetailStateData(
      {final String error,
      final StatusType status,
      final int indexSize,
      final int indexColor,
      final int? available}) = _$ProductDetailStateDataImpl;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  int get indexSize;
  @override
  int get indexColor;
  @override
  int? get available;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailStateDataImplCopyWith<_$ProductDetailStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailState {
  ProductDetailStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateCopyWith<ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
  @useResult
  $Res call({ProductDetailStateData? data});

  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

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
              as ProductDetailStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductDetailStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$InitialImpl>
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
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.initial(data: $data)';
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
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
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
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProductDetailState {
  const factory Initial({final ProductDetailStateData? data}) = _$InitialImpl;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$StatusImpl>
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
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$StatusImpl implements Status {
  const _$StatusImpl({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.status(data: $data)';
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
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
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
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements ProductDetailState {
  const factory Status({final ProductDetailStateData? data}) = _$StatusImpl;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorImplCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$GetErrorImplCopyWith(
          _$GetErrorImpl value, $Res Function(_$GetErrorImpl) then) =
      __$$GetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$GetErrorImpl>
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
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$GetErrorImpl implements GetError {
  const _$GetErrorImpl({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.getError(data: $data)';
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
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
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
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements ProductDetailState {
  const factory GetError({final ProductDetailStateData? data}) = _$GetErrorImpl;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorImplCopyWith<_$GetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetIndexImplCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$SetIndexImplCopyWith(
          _$SetIndexImpl value, $Res Function(_$SetIndexImpl) then) =
      __$$SetIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetIndexImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$SetIndexImpl>
    implements _$$SetIndexImplCopyWith<$Res> {
  __$$SetIndexImplCopyWithImpl(
      _$SetIndexImpl _value, $Res Function(_$SetIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetIndexImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$SetIndexImpl implements SetIndex {
  const _$SetIndexImpl({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.setIndex(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIndexImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIndexImplCopyWith<_$SetIndexImpl> get copyWith =>
      __$$SetIndexImplCopyWithImpl<_$SetIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return setIndex(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return setIndex?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return setIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return setIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(this);
    }
    return orElse();
  }
}

abstract class SetIndex implements ProductDetailState {
  const factory SetIndex({final ProductDetailStateData? data}) = _$SetIndexImpl;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetIndexImplCopyWith<_$SetIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetAvailableImplCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$SetAvailableImplCopyWith(
          _$SetAvailableImpl value, $Res Function(_$SetAvailableImpl) then) =
      __$$SetAvailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetAvailableImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$SetAvailableImpl>
    implements _$$SetAvailableImplCopyWith<$Res> {
  __$$SetAvailableImplCopyWithImpl(
      _$SetAvailableImpl _value, $Res Function(_$SetAvailableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetAvailableImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$SetAvailableImpl implements SetAvailable {
  const _$SetAvailableImpl({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.setAvailable(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAvailableImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAvailableImplCopyWith<_$SetAvailableImpl> get copyWith =>
      __$$SetAvailableImplCopyWithImpl<_$SetAvailableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return setAvailable(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return setAvailable?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
    required TResult orElse(),
  }) {
    if (setAvailable != null) {
      return setAvailable(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return setAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return setAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (setAvailable != null) {
      return setAvailable(this);
    }
    return orElse();
  }
}

abstract class SetAvailable implements ProductDetailState {
  const factory SetAvailable({final ProductDetailStateData? data}) =
      _$SetAvailableImpl;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetAvailableImplCopyWith<_$SetAvailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
