// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/address/response/address.dart';
import 'package:trendy_treasures_seller/models/credit_card/response.dart/credit_cart.dart';
import 'package:trendy_treasures_seller/models/product/response/order_product.dart';

class CreateOrderRequest {
  List<OrderProduct> products;
  ShippingInformation shippingInfo;
  Payment paymentInfo;

  CreateOrderRequest({
    required this.products,
    required this.shippingInfo,
    required this.paymentInfo,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'products': products.map((x) => x.toJson()).toList(),
      'shippingInfo': shippingInfo.toJson(),
      'paymentInfo': paymentInfo.toJson(),
    };
  }

  factory CreateOrderRequest.fromJson(Map<String, dynamic> map) {
    return CreateOrderRequest(
      products: List<OrderProduct>.from(
        (map['products'] as List<int>).map<OrderProduct>(
          (x) => OrderProduct.fromJson(x as Map<String, dynamic>),
        ),
      ),
      shippingInfo: ShippingInformation.fromJson(
          map['shippingInfo'] as Map<String, dynamic>),
      paymentInfo: Payment.fromJson(map['paymentInfo'] as Map<String, dynamic>),
    );
  }

  String toRawJson() => json.encode(toJson());

  factory CreateOrderRequest.fromRawJson(String source) =>
      CreateOrderRequest.fromJson(json.decode(source) as Map<String, dynamic>);
}
