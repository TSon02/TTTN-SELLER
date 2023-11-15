part of 'product_detail_cubit.dart';

@freezed
class ProductDetailStateData with _$ProductDetailStateData {
  const factory ProductDetailStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default(0) int indexSize,
    @Default(0) int indexColor,
    int? available,
  }) = _ProductDetailStateData;
}

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial({ProductDetailStateData? data}) =
      Initial;
  const factory ProductDetailState.status({ProductDetailStateData? data}) =
      Status;
  const factory ProductDetailState.getError({ProductDetailStateData? data}) =
      GetError;

  const factory ProductDetailState.setIndex({ProductDetailStateData? data}) =
      SetIndex;

  const factory ProductDetailState.setAvailable(
      {ProductDetailStateData? data}) = SetAvailable;
}
