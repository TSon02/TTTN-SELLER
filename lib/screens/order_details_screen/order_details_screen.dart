import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures_seller/constants/enum/order_status.dart';
import 'package:trendy_treasures_seller/models/order/response/order.dart';
import 'package:trendy_treasures_seller/screens/order_details_screen/widgets/order_product_item.dart';
import 'package:trendy_treasures_seller/screens/order_details_screen/widgets/promo_code.dart';
import 'package:trendy_treasures_seller/screens/order_details_screen/widgets/shipping_info.dart';
import 'package:trendy_treasures_seller/screens/order_details_screen/widgets/order_status.dart';
import 'package:trendy_treasures_seller/screens/orders_screen/cubit/orders_cubit.dart';
import 'package:trendy_treasures_seller/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures_seller/widgets/custom_button_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key, required this.order});
  final Order order;
  static BlocProvider<OrdersCubit> provider({required Order order}) {
    return BlocProvider(
      create: (context) {
        return OrdersCubit();
      },
      child: OrderDetailsScreen(order: order),
    );
  }

  @override
  State<OrderDetailsScreen> createState() => OrderDetailsScreenState();
}

class OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    // final orderProvider =
    //     Provider.of<OrderDetailsProvider>(context, listen: false);
    int currentStatusIndex = 0;

    for (var i = 0; i < OrderStatus.values.length; i++) {
      if (widget.order.orderStatus == OrderStatus.values[i].name) {
        currentStatusIndex = i;
      }
    }
    return WillPopScope(
      onWillPop: () async {
        // for (var i = 0; i < orderProvider.orderProducts.length; i++) {
        //   orderProvider.updateOrderProduct(index: i, coupon: null);
        // }
        return true;
      },
      child: BlocListener<OrdersCubit, OrdersState>(
        listener: (context, state) async {
          if (state.data!.error == 'true') {
            await AwesomeDialog(
              context: context,
              dialogType: DialogType.success,
              animType: AnimType.rightSlide,
              title: 'Successfully',
              desc: 'Update order status successfully!',
              btnOkOnPress: () {
                Navigator.pop(context);
              },
            ).show();
          }
        },
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: const SizedBox(),
              backgroundColor: Colors.white,
              elevation: 1,
              flexibleSpace: AppBarWidget(
                isPop: true,
                ctx: context,
                onClick: () {},
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleTextWidget(
                      title: 'Order Details',
                      fontSize: 20,
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    ShippingInfor(
                      shippingInformation: widget.order.shippingInfo,
                    ),

                    const SizedBox(
                      height: 32,
                    ),

                    const TitleTextWidget(
                      title: 'Product Item',
                      fontSize: 16,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    OrderProductWidget(order: widget.order),
                    const SizedBox(
                      height: 12,
                    ),
                    const TitleTextWidget(
                      title: 'Promo Code',
                      fontSize: 16,
                    ),

                    PromoCodeWidget(coupon: widget.order.product.coupon),
                    const SizedBox(
                      height: 12,
                    ),
                    // Row(children: [
                    //   Expanded(
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         const SubTitleWidget(
                    //           subTitle: 'Total Price',
                    //           fontSize: 10,
                    //         ),
                    //         TitleTextWidget(
                    //           title:
                    //               '\$${context.watch<OrderDetailsProvider>().totalPrice}',
                    //           fontSize: 20,
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    //   Expanded(
                    //     child: CustomButtonWidget(
                    //       backgroundColor: Colors.black,
                    //       textColor: Colors.white,
                    //       title: 'Place Order',
                    //       onClick: () {
                    //         if (_index == null) {
                    //           UIHelpers.showSnackBar(
                    //               context: context,
                    //               message: 'Please choose your address');
                    //         } else {
                    //           PersistentNavBarNavigator.pushNewScreen(
                    //             context,
                    //             screen: PaymentScreen.provider(),
                    //             withNavBar:
                    //                 false, // OPTIONAL VALUE. True by default.
                    //             pageTransitionAnimation:
                    //                 PageTransitionAnimation.cupertino,
                    //           );
                    //         }
                    //       },
                    //     ),
                    //   )
                    // ]),
                    const TitleTextWidget(
                      title: 'Order Status',
                      fontSize: 16,
                    ),

                    OrderStatusWidget(
                        status: widget.order.orderStatus,
                        currentStatusIndex: currentStatusIndex),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomButtonWidget(
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      title:
                          widget.order.orderStatus != OrderStatus.delivered.name
                              ? OrderStatus.values[currentStatusIndex + 1].name
                              : 'Done',
                      onClick:
                          widget.order.orderStatus != OrderStatus.delivered.name
                              ? () async {
                                  await context
                                      .read<OrdersCubit>()
                                      .updateOrderStatus(
                                        context: context,
                                        id: widget.order.id,
                                        status: OrderStatus
                                            .values[currentStatusIndex + 1]
                                            .name,
                                      );
                                }
                              : () {},
                    ),
                    const SizedBox(
                      height: 12,
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
}
