import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/constants/enum/order_status.dart';
import 'package:trendy_treasures_seller/models/order/response/order.dart';
import 'package:trendy_treasures_seller/screens/orders_screen/widgets/confirm_button.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class OrderItemWidget extends StatefulWidget {
  const OrderItemWidget({super.key, required this.order, required this.index});
  final Order order;
  final int index;
  @override
  State<OrderItemWidget> createState() => OrderItemWidgetState();
}

class OrderItemWidgetState extends State<OrderItemWidget> {
  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.parse(widget.order.createdAt);
    String dateStr = "${time.day}/${time.month}/${time.year}";

    log(widget.order.toRawJson());
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(12),
        child: Container(
            width: double.infinity,
            // height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 6,
                  spreadRadius: -5,
                  offset: Offset(1, 1),
                ),
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: -5,
                  offset: Offset(-1, 0),
                ),
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTextWidget(
                        title: widget.order.id,
                        fontSize: 14,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TitleTextWidget(
                            title: dateStr,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.payment,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.order.paymentInfo.status!,
                            style: const TextStyle(
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.pending_actions,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.order.orderStatus,
                            style: const TextStyle(
                              color: Colors.lightGreen,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  widget.order.orderStatus == OrderStatus.processing.name
                      ? ConfirmButtonWidget(
                          id: widget.order.id,
                          index: widget.index,
                        )
                      : const SizedBox(),
                ],
              ),
            )),
      ),
    );
  }
}

double stringToNumber({required String value}) {
  double modifiedValue = double.parse(value.replaceAll("\$", ""));

  return modifiedValue;
}
