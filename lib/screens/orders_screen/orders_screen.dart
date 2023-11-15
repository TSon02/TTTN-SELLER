// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures_seller/constants/enum/order_status.dart';
import 'package:trendy_treasures_seller/constants/enum/status_type.dart';
import 'package:trendy_treasures_seller/screens/order_details_screen/order_details_screen.dart';
import 'package:trendy_treasures_seller/screens/orders_screen/cubit/orders_cubit.dart';
import 'package:trendy_treasures_seller/screens/orders_screen/widgets/order_item.dart';
import 'package:trendy_treasures_seller/widgets/loader.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  static BlocProvider<OrdersCubit> provider() {
    return BlocProvider(
      create: (context) {
        return OrdersCubit();
      },
      child: const OrdersScreen(),
    );
  }

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with AfterLayoutMixin {
  int statusIndex = 0;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context
        .read<OrdersCubit>()
        .getOrders(context: context, statusIndex: statusIndex);
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dateStr = "${now.day}/${now.month}/${now.year}";

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              'Orders',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              Center(
                child: Text(
                  dateStr,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
            ],
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              await context
                  .read<OrdersCubit>()
                  .getOrders(context: context, statusIndex: statusIndex);
            },
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (var i = 0; i < OrderStatusz.values.length; i++)
                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(8),
                            onTap: () {
                              setState(() {
                                statusIndex = i;
                                context.read<OrdersCubit>().getOrdersByStatus(
                                      status: OrderStatusz.values[i].name,
                                    );
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 5, left: 5),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: statusIndex == i
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                              child: Text(
                                OrderStatusz.values[i].name,
                                style: TextStyle(
                                  color: statusIndex == i
                                      ? Colors.white
                                      : Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                Expanded(
                  child: BlocBuilder<OrdersCubit, OrdersState>(
                    builder: (context, state) {
                      switch (state.data!.status) {
                        case StatusType.loading:
                          return const Loader();

                        case StatusType.error:
                          return Center(
                            child: Text(
                              state.data!.error,
                              style: const TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          );

                        case StatusType.loaded:
                          if (state.data!.ordersByStatus.isEmpty) {
                            return const Center(
                              child: SingleChildScrollView(
                                physics: AlwaysScrollableScrollPhysics(),
                                child: Text(
                                  'Orders empty',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            );
                          }

                          final ordersByStatus = context
                              .watch<OrdersCubit>()
                              .state
                              .data!
                              .ordersByStatus;
                          return Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  padding: const EdgeInsets.only(
                                      right: 24, left: 24, top: 8, bottom: 16),
                                  itemCount: ordersByStatus.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () async {
                                        await PersistentNavBarNavigator
                                            .pushNewScreen(
                                          context,
                                          screen: OrderDetailsScreen.provider(
                                            order: ordersByStatus[index],
                                            // order: state.data!.ordersByStatus[index],
                                          ),
                                          withNavBar: false,
                                          pageTransitionAnimation:
                                              PageTransitionAnimation.cupertino,
                                        ).whenComplete(() async {
                                          await context
                                              .read<OrdersCubit>()
                                              .getOrders(
                                                  context: context,
                                                  statusIndex: statusIndex);
                                        });
                                      },
                                      child: OrderItemWidget(
                                          index: statusIndex,
                                          order: ordersByStatus[index]),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                            ],
                          );
                        default:
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                      }
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
