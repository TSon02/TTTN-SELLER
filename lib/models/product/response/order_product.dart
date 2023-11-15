// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/others/coupon.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';

class OrderProduct {
  final String productId;
  final String sellerId;
  final String buyerId;
  final String productBrand;
  final String productName;
  final num price;
  final ProductVariant productVariant;
  Coupon? coupon;

  final dynamic image;

  OrderProduct({
    required this.productId,
    required this.sellerId,
    required this.buyerId,
    required this.productName,
    required this.productBrand,
    required this.price,
    required this.productVariant,
    this.coupon,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'productId': productId,
      'sellerId': sellerId,
      'buyerId': buyerId,
      'productBrand': productBrand,
      'productName': productName,
      'price': price,
      'productVariant': productVariant.toJson(),
      'coupon': coupon?.toJson(),
      'image': image,
    };
  }

  factory OrderProduct.fromJson(Map<String, dynamic> map) {
    return OrderProduct(
      productId: map['productId'] as String,
      sellerId: map['sellerId'] as String,
      buyerId: map['buyerId'] as String,
      productBrand: map['productBrand'] as String,
      productName: map['productName'] as String,
      price: map['price'] as num,
      productVariant: ProductVariant.fromJson(
          map['productVariant'] as Map<String, dynamic>),
      coupon: map['coupon'] != null
          ? Coupon.fromJson(map['coupon'] as Map<String, dynamic>)
          : null,
      image: map['image'] as dynamic,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory OrderProduct.fromRawJson(String source) =>
      OrderProduct.fromJson(json.decode(source) as Map<String, dynamic>);
}
