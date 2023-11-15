// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/address/response/address.dart';
import 'package:trendy_treasures_seller/models/credit_card/response.dart/credit_cart.dart';
import 'package:trendy_treasures_seller/models/product/response/order_product.dart';

class Order {
  final OrderProduct product;
  final ShippingInformation shippingInfo;
  final Payment paymentInfo;
  final String sellerId;
  final String buyerId;
  final String orderStatus;
  final String id;
  final String createdAt;
  final String updatedAt;

  Order(
      {required this.product,
      required this.shippingInfo,
      required this.paymentInfo,
      required this.sellerId,
      required this.buyerId,
      required this.orderStatus,
      required this.id,
      required this.createdAt,
      required this.updatedAt});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'product': product.toJson(),
      'shippingInfo': shippingInfo.toJson(),
      'paymentInfo': paymentInfo.toJson(),
      'sellerId': sellerId,
      'buyerId': buyerId,
      'orderStatus': orderStatus,
      '_id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Order.fromJson(Map<String, dynamic> map) {
    return Order(
      product: OrderProduct.fromJson(map['product'] as Map<String, dynamic>),
      shippingInfo: ShippingInformation.fromJson(
          map['shippingInfo'] as Map<String, dynamic>),
      paymentInfo: Payment.fromJson(map['paymentInfo'] as Map<String, dynamic>),
      sellerId: map['sellerId'] as String,
      buyerId: map['buyerId'] as String,
      orderStatus: map['orderStatus'] as String,
      id: map['_id'] as String,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory Order.fromRawJson(String source) =>
      Order.fromJson(json.decode(source) as Map<String, dynamic>);
}
