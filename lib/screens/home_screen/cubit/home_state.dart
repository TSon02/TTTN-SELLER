part of 'home_cubit.dart';

@freezed
class HomeStateData with _$HomeStateData {
  const factory HomeStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Product> products,
    @Default([]) List<Product> productsOriginal,
    @Default([]) List<Product> newProducts,
    @Default([]) List<Product> popularProducts,
    @Default([]) List<Product> productsByCategory,
  }) = _HomeStateData;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({HomeStateData? data}) = Initial;
  const factory HomeState.status({HomeStateData? data}) = Status;
  const factory HomeState.getError({HomeStateData? data}) = GetError;
  const factory HomeState.getProducts({HomeStateData? data}) = GetProducts;
  const factory HomeState.setPartOfProducts({HomeStateData? data}) =
      SetPartOfProducts;

  const factory HomeState.setProductsByCategory({HomeStateData? data}) =
      SetProductsByCategory;
}
