// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures_seller/constants/enum/order_status.dart';
import 'package:trendy_treasures_seller/constants/enum/status_type.dart';
import 'package:trendy_treasures_seller/get_it.dart';
import 'package:trendy_treasures_seller/models/order/request/update_order_request.dart';
import 'package:trendy_treasures_seller/models/order/response/order.dart';
import 'package:trendy_treasures_seller/providers/user_provider.dart';
import 'package:trendy_treasures_seller/repositories/data_repositories.dart';
import 'package:trendy_treasures_seller/utils/ui_helpers.dart';

part 'orders_state.dart';
part 'orders_cubit.freezed.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final _dataRepository = getIt<DataRepository>();

  OrdersCubit() : super(const OrdersState.initial(data: OrdersStateData()));

  Future<void> getOrders(
      {required BuildContext context, int? statusIndex}) async {
    try {
      emit(
        OrdersState.status(
          data: state.data!.copyWith(status: StatusType.loading),
        ),
      );
      final userProvider = Provider.of<UserProvider>(context, listen: false);
      List<Order> ordersCompleted = [];
      List<Order> ordersProcessing = [];
      final response =
          await _dataRepository.getOrdersAdmin(token: userProvider.user.token!);

      if (response.success == false) {
        emit(
          OrdersState.getError(
            data: state.data!.copyWith(
                error: "Something went wrong!", status: StatusType.error),
          ),
        );
      } else {
        ordersProcessing = response.orders!.where((order) {
          return order.orderStatus != OrderStatus.delivered.name;
        }).toList();

        ordersCompleted = response.orders!.where((order) {
          return order.orderStatus == OrderStatus.delivered.name;
        }).toList();

        emit(OrdersState.getOrders(
            data: state.data!.copyWith(orders: response.orders ?? [])));

        emit(OrdersState.getOrders(
            data: state.data!.copyWith(ordersProcessing: ordersProcessing)));

        if (statusIndex != null) {
          getOrdersByStatus(status: OrderStatusz.values[statusIndex].name);
        }

        emit(
          OrdersState.getError(
            data: state.data!.copyWith(totalSales: ordersCompleted),
          ),
        );
        // getOrdersByStatus(status: myOrderStatus[0]);

        emit(
          OrdersState.getError(
            data: state.data!.copyWith(status: StatusType.loaded),
          ),
        );
      }
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
      log(e.toString());
    }
  }

  void getOrdersByStatus({required String status}) {
    List<Order> orders = [];
    if (status == "accomplished") {
      orders = state.data!.orders
          .where((element) => element.orderStatus == "delivered")
          .toList();
    } else {
      orders = state.data!.orders
          .where((element) => element.orderStatus != "delivered")
          .toList();
    }

    // log(orders.toString());

    emit(OrdersState.getOrders(
        data: state.data!.copyWith(ordersByStatus: orders)));
  }

  Future<void> updateOrderStatus(
      {required BuildContext context,
      required String id,
      required String status}) async {
    try {
      UIHelpers.showLoading();

      final request = UpdateOrderRequest(id: id, status: status);

      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response = await _dataRepository.updateOrderStatus(
        request: request,
        token: userProvider.user.token!,
      );

      emit(OrdersState.status(
          data: state.data!.copyWith(error: response.success.toString())));
      UIHelpers.showLoading();
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
