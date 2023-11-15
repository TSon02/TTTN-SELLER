// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures_seller/constants/enum/order_status.dart';
import 'package:trendy_treasures_seller/screens/orders_screen/cubit/orders_cubit.dart';

class ConfirmButtonWidget extends StatelessWidget {
  const ConfirmButtonWidget({super.key, required this.id, required this.index});
  final String id;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.read<OrdersCubit>().updateOrderStatus(
            context: context, id: id, status: OrderStatus.confirmed.name);

        await context
            .read<OrdersCubit>()
            .getOrders(context: context, statusIndex: index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          'Confirm',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
