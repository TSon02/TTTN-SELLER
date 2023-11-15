part of 'orders_cubit.dart';

@freezed
class OrdersStateData with _$OrdersStateData {
  const factory OrdersStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Order> orders,
    @Default([]) List<Order> ordersProcessing,
    @Default([]) List<Order> ordersByStatus,
    @Default([]) List<Order> totalSales,
  }) = _OrdersStateData;
}

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial({OrdersStateData? data}) = Initial;
  const factory OrdersState.status({OrdersStateData? data}) = Status;
  const factory OrdersState.getError({OrdersStateData? data}) = GetError;
  const factory OrdersState.getOrders({OrdersStateData? data}) = GetOrders;
  const factory OrdersState.getTotalSales({OrdersStateData? data}) =
      GetTotalSales;
}
