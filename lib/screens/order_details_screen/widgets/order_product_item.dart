import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/models/order/response/order.dart';
import 'package:trendy_treasures_seller/widgets/subtitle_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class OrderProductWidget extends StatefulWidget {
  const OrderProductWidget({super.key, required this.order});
  final Order order;

  @override
  State<OrderProductWidget> createState() => OrderProductWidgetState();
}

class OrderProductWidgetState extends State<OrderProductWidget> {
  @override
  Widget build(BuildContext context) {
    final product = widget.order.product;
    final quantity = product.productVariant.quantity;

    log(widget.order.toRawJson());
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Material(
        elevation: 15,
        shadowColor: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: product.image,
                  imageBuilder: (context, imageProvider) => Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),

                // Container(
                //   width: 90,
                //   height: 90,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     image: DecorationImage(
                //       fit: BoxFit.cover,
                //       image: NetworkImage(product.image as String),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(
                      title: product.productBrand,
                    ),
                    SizedBox(
                      width: 160,
                      child: SubTitleWidget(
                        subTitle: product.productName,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    SubTitleWidget(
                      subTitle: 'Quantity: $quantity',
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                    SubTitleWidget(
                      subTitle: 'Size: ${product.productVariant.size}',
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                    Row(children: [
                      const SubTitleWidget(
                        subTitle: 'Color:',
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: Color(
                            int.parse(
                                product.productVariant.hexColor
                                    .replaceAll('#', ''),
                                radix: 16),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ]),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$${(product.price * quantity).toDouble()}',
                      style: TextStyle(
                        decoration: product.coupon != null
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color:
                            product.coupon != null ? Colors.grey : Colors.black,
                      ),
                    ),
                    product.coupon != null
                        ? TitleTextWidget(
                            title: product.coupon!.value.contains('\$')
                                ? '\$${(product.price * quantity - quantity * stringToNumber(
                                      value: product.coupon!.value,
                                    )).toDouble()}'
                                : '\$${(product.price * quantity - product.price * quantity * double.parse(product.coupon!.value)).toDouble()}',
                            fontSize: 18,
                          )
                        : const SizedBox(),
                  ],
                ),
                // TitleTextWidget(
                //     title:
                //         '\$${widget.order.product.price.toStringAsFixed(2)}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

double stringToNumber({required String value}) {
  double modifiedValue = double.parse(value.replaceAll("\$", ""));

  return modifiedValue;
}
