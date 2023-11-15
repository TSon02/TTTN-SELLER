// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class UploadOrUpdateProductRequest {
//   final String productName;
//   final String description;
//   final String category;
//   final double price;
//   final int quantity;
//   final List<String> images;

//   UploadOrUpdateProductRequest({
//     required this.productName,
//     required this.description,
//     required this.category,
//     required this.price,
//     required this.quantity,
//     required this.images,
//   });

//   Map<String, dynamic> toJson() {
//     return <String, dynamic>{
//       'productName': productName,
//       'description': description,
//       'category': category,
//       'price': price,
//       'quantity': quantity,
//       'images': images,
//     };
//   }

//   factory UploadOrUpdateProductRequest.fromJson(Map<String, dynamic> json) {
//     return UploadOrUpdateProductRequest(
//         productName: json['productName'] as String,
//         description: json['description'] as String,
//         category: json['category'] as String,
//         price: json['price'] as double,
//         quantity: json['quantity'] as int,
//         images: List<String>.from(
//           (json['images'] as List<String>),
//         ));
//   }

//   String toRawJson() => json.encode(toJson());

//   factory UploadOrUpdateProductRequest.fromRawJson(String source) =>
//       UploadOrUpdateProductRequest.fromJson(
//           json.decode(source) as Map<String, dynamic>);
// }

import 'dart:convert';

import 'package:trendy_treasures_seller/models/others/coupon.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';

class UploadOrUpdateProductRequest {
  final String productName;
  final String productBrand;
  final String description;
  final String category;
  final double price;
  final List<ProductVariantRequest> productVariants;
  final List<Coupon> coupons;
  final List<String> images;

  UploadOrUpdateProductRequest(
      {required this.productName,
      required this.productBrand,
      required this.description,
      required this.category,
      required this.price,
      required this.productVariants,
      required this.coupons,
      required this.images});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'productName': productName,
      'productBrand': productBrand,
      'description': description,
      'category': category,
      'price': price,
      'productVariants': productVariants.map((x) => x.toJson()).toList(),
      'coupons': coupons.map((x) => x.toJson()).toList(),
      'images': images,
    };
  }

  factory UploadOrUpdateProductRequest.fromJson(Map<String, dynamic> map) {
    return UploadOrUpdateProductRequest(
      productName: map['productName'] as String,
      productBrand: map['productBrand'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      price: map['price'] as double,
      productVariants: List<ProductVariantRequest>.from(
        (map['productVariants'] as List<int>).map<ProductVariantRequest>(
          (x) => ProductVariantRequest.fromJson(x as Map<String, dynamic>),
        ),
      ),
      coupons: List<Coupon>.from(
        (map['coupons'] as List<dynamic>).map<Coupon>(
          (x) => Coupon.fromJson(x as Map<String, dynamic>),
        ),
      ),
      images: List<String>.from((map['images'] as List<String>)),
    );
  }

  String toRawJson() => json.encode(toJson());

  factory UploadOrUpdateProductRequest.fromRawJson(String source) =>
      UploadOrUpdateProductRequest.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
