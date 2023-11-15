part of 'my_products_cubit.dart';

@freezed
class MyProductsStateData with _$MyProductsStateData {
  const factory MyProductsStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Product> products,
    Product? delProductResponse,
  }) = _MyProductsStateData;
}

@freezed
class MyProductsState with _$MyProductsState {
  const factory MyProductsState.initial({MyProductsStateData? data}) = Initial;
  const factory MyProductsState.status({MyProductsStateData? data}) = Status;
  const factory MyProductsState.getError({MyProductsStateData? data}) =
      GetError;
  const factory MyProductsState.getProducts({MyProductsStateData? data}) =
      GetProducts;
  const factory MyProductsState.delProductById({MyProductsStateData? data}) =
      DeleteProduct;

  const factory MyProductsState.sellProduct({MyProductsStateData? data}) =
      SellProduct;
}
