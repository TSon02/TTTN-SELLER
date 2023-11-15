// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures_seller/constants/enum/status_type.dart';
import 'package:trendy_treasures_seller/constants/enum/type.dart';
import 'package:trendy_treasures_seller/screens/add_product_screen/add_product_screen.dart';
import 'package:trendy_treasures_seller/screens/my_products_screen/cubit/my_products_cubit.dart';
import 'package:trendy_treasures_seller/widgets/loader.dart';
import 'package:trendy_treasures_seller/widgets/single_product_widget.dart';

class MyProductsScreen extends StatefulWidget {
  const MyProductsScreen({super.key});

  static BlocProvider<MyProductsCubit> provider() {
    return BlocProvider(
      create: (context) {
        return MyProductsCubit();
      },
      child: const MyProductsScreen(),
    );
  }

  @override
  State<MyProductsScreen> createState() => _MyProductsScreenState();
}

class _MyProductsScreenState extends State<MyProductsScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<MyProductsCubit>().getProducts(context);
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dateStr = "${now.day}-${now.month}-${now.year}";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'My Products',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<MyProductsCubit, MyProductsState>(
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
                    if (state.data!.products.isEmpty) {
                      return const Center(
                        child: Text(
                          'Products Empty',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(state.data!.products.length,
                              (index) {
                            return SingleProductWidget(
                              product: state.data!.products[index],
                              onNavToUpdate: () async {
                                log(state.data!.products[index].toRawJson());
                                await PersistentNavBarNavigator.pushNewScreen(
                                  context,
                                  screen: AddOrUpdateProductScreen.provider(
                                      typeAction: TypeAction.update,
                                      product: state.data!.products[index]),
                                  withNavBar: false,
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                ).whenComplete(() async {
                                  await context
                                      .read<MyProductsCubit>()
                                      .getProducts(context);
                                });
                              },
                              onDelete: ({required id}) async {
                                await context
                                    .read<MyProductsCubit>()
                                    .delProductById(id: id, context: context);

                                // await context
                                //     .read<MyProductsCubit>()
                                //     .getProducts(context);
                              },
                            );
                          }),

                          // Expanded(

                          //   child: ListView.builder(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 24, vertical: 16),
                          //     itemCount: state.data!.products.length,
                          //     itemBuilder: (context, index) {
                          //       return SingleProductWidget(
                          //         product: state.data!.products[index],
                          //         onDelete: ({required id}) async {
                          //           await context
                          //               .read<MyProductsCubit>()
                          //               .delProductById(id: id, context: context);

                          //           // await context
                          //           //     .read<MyProductsCubit>()
                          //           //     .getProducts(context);
                          //         },
                          //       );
                          //     },
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 16,
                          // ),
                        ],
                      ),
                    );
                  default:
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: GestureDetector(
                onTap: () async {
                  await PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: AddOrUpdateProductScreen.provider(
                        typeAction: TypeAction.create),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  ).whenComplete(() async {
                    await context.read<MyProductsCubit>().getProducts(context);
                  });
                },
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  color: Colors.grey,
                  dashPattern: const [10, 4],
                  strokeCap: StrokeCap.round,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    // height: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Add Product',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
