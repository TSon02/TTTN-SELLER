import 'dart:convert';

import 'package:trendy_treasures_seller/models/others/coupon.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';

class AddProductToCartRequest {
  final String productId;
  final String sellerId;
  final String productBrand;
  final String productName;
  final num price;
  final ProductVariant productVariant;
  final List<Coupon> coupons;

  final dynamic image;

  AddProductToCartRequest({
    required this.productId,
    required this.sellerId,
    required this.productName,
    required this.productBrand,
    required this.price,
    required this.productVariant,
    required this.coupons,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'productId': productId,
      'sellerId': sellerId,
      'productBrand': productBrand,
      'productName': productName,
      'price': price,
      'productVariant': productVariant.toJson(),
      'coupons': coupons.map((x) => x.toJson()).toList(),
      'image': image,
    };
  }

  factory AddProductToCartRequest.fromJson(Map<String, dynamic> map) {
    return AddProductToCartRequest(
      productId: map['productId'] as String,
      sellerId: map['sellerId'] as String,
      productBrand: map['productBrand'] as String,
      productName: map['productName'] as String,
      price: map['price'] as num,
      productVariant: ProductVariant.fromJson(
          map['productVariant'] as Map<String, dynamic>),
      coupons: List<Coupon>.from(
        (map['coupons'] as List<dynamic>).map<Coupon>(
          (x) => Coupon.fromJson(x as Map<String, dynamic>),
        ),
      ),
      image: map['image'] as dynamic,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory AddProductToCartRequest.fromRawJson(String source) =>
      AddProductToCartRequest.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
