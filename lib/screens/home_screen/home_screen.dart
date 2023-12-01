// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures_seller/constants/enum/status_type.dart';
import 'package:trendy_treasures_seller/screens/analysis_screen/analysis_screen.dart';
import 'package:trendy_treasures_seller/screens/home_screen/widgets/grid_products_widget.dart';
import 'package:trendy_treasures_seller/screens/home_screen/widgets/home_button.dart';
import 'package:trendy_treasures_seller/screens/my_products_screen/cubit/my_products_cubit.dart';
import 'package:trendy_treasures_seller/screens/orders_screen/cubit/orders_cubit.dart';
import 'package:trendy_treasures_seller/widgets/loader.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.controller});
  final PersistentTabController controller;
  // static BlocProvider<MyProductsCubit> provider() {
  //   return BlocProvider(
  //     create: (context) {
  //       return MyProductsCubit();
  //     },
  //     child: const HomeScreen(),
  //   );
  // }

  static MultiBlocProvider provider(PersistentTabController controller) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MyProductsCubit>(
          create: (BuildContext context) => MyProductsCubit(),
        ),
        BlocProvider<OrdersCubit>(
          create: (BuildContext context) => OrdersCubit(),
        ),
      ],
      child: HomeScreen(controller: controller),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<MyProductsCubit>().getProducts(context);
    await context.read<OrdersCubit>().getOrders(context: context);
  }

  // void refresh() async {
  //   await context.read<MyProductsCubit>().getProducts(context);
  // }

  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<UserProvider>(context).user;
    // print(user.token);
    DateTime now = DateTime.now();
    String dateStr = "${now.day}-${now.month}-${now.year}";

    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              'Home',
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
          body:
              // BlocBuilder<MyProductsCubit, MyProductsState>(
              //   builder: (context, state) {
              //     switch (state.data!.status) {
              //       case StatusType.loading:
              //         return const Loader();

              //       case StatusType.loaded:
              //         return

              RefreshIndicator(
            onRefresh: () async {
              await context.read<MyProductsCubit>().getProducts(context);
              await context.read<OrdersCubit>().getOrders(context: context);
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BlocBuilder<MyProductsCubit, MyProductsState>(
                            builder: (context, state) {
                          switch (state.data!.status) {
                            case StatusType.loading:
                              return const HomeButton(
                                image: 'assets/images/products.png',
                                quantity: '0',
                                title: 'Products',
                              );

                            case StatusType.loaded:
                              return HomeButton(
                                image: 'assets/images/products.png',
                                quantity:
                                    state.data!.products.length.toString(),
                                onNav: () {
                                  log(widget.controller.index.toString());

                                  jumtoTabFunction(1);

                                  log(widget.controller.index.toString());
                                },
                                title: 'Products',
                              );

                            default:
                              return const HomeButton(
                                image: 'assets/images/products.png',
                                quantity: '0',
                                title: 'Products',
                              );
                          }
                        }),
                        // const HomeButton(
                        //   // image: 'assets/images/products.png',
                        //   quantity: '20',
                        //   title: 'Orders',
                        //   icon: CupertinoIcons.square_list,
                        // ),
                        BlocBuilder<OrdersCubit, OrdersState>(
                            builder: (context, state) {
                          switch (state.data!.status) {
                            case StatusType.loading:
                              return const HomeButton(
                                icon: CupertinoIcons.square_list,
                                quantity: '0',
                                title: 'Orders',
                              );

                            case StatusType.loaded:
                              return HomeButton(
                                quantity: state.data!.ordersProcessing.length
                                    .toString(),
                                icon: CupertinoIcons.square_list,
                                onNav: () {
                                  jumtoTabFunction(2);
                                },
                                title: 'Orders',
                              );

                            default:
                              return const HomeButton(
                                icon: CupertinoIcons.square_list,
                                quantity: '0',
                                title: 'Orders',
                              );
                          }
                        }),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeButton(
                          quantity: '0',
                          onNav: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: AnalysisScreen.provider(),
                              withNavBar: false,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          title: 'Analysis',
                          icon: CupertinoIcons.chart_bar,
                        ),
                        BlocBuilder<OrdersCubit, OrdersState>(
                            builder: (context, state) {
                          switch (state.data!.status) {
                            case StatusType.loading:
                              return const HomeButton(
                                quantity: '0',
                                title: 'Total Sales',
                                icon: Icons.today_outlined,
                              );
                            case StatusType.loaded:
                              return HomeButton(
                                quantity:
                                    state.data!.totalSales.length.toString(),
                                icon: Icons.today_outlined,
                                title: 'Total Sales',
                              );

                            default:
                              return const HomeButton(
                                quantity: '0',
                                title: 'Total Sales',
                                icon: Icons.today_outlined,
                              );
                          }
                        }),
                      ],
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TitleTextWidget(
                        title: 'Popular Products',
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    BlocBuilder<MyProductsCubit, MyProductsState>(
                      builder: (context, state) {
                        switch (state.data!.status) {
                          case StatusType.loading:
                            return const Loader();

                          case StatusType.loaded:
                            return state.data!.products.isEmpty
                                ? const Center(
                                    child: Text(
                                    'Prouduct is Empty',
                                    style: TextStyle(fontSize: 20),
                                  ))
                                : GridProductsWidget(
                                    products: state.data!.products);

                          default:
                            return const Loader();
                        }
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void jumtoTabFunction(int indexTab) {
    widget.controller.jumpToTab(indexTab);
  }
}
