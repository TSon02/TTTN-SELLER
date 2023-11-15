// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class Product {
//   final String id;
//   final String userId;
//   final String productName;
//   final String description;
//   final String category;
//   final num price;
//   final int quantity;
//   final List<dynamic> images;
//   final num rating;
//   final String createdAt;
//   final String updatedAt;

//   Product({
//     required this.id,
//     required this.userId,
//     required this.productName,
//     required this.description,
//     required this.category,
//     required this.price,
//     required this.quantity,
//     required this.images,
//     required this.rating,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   Map<String, dynamic> toJson() {
//     return <String, dynamic>{
//       '_id': id,
//       'userId': userId,
//       'productName': productName,
//       'description': description,
//       'category': category,
//       'price': price,
//       'quantity': quantity,
//       'images': images,
//       'rating': rating,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//     };
//   }

//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//         id: json['_id'] as String,
//         userId: json['userId'] as String,
//         productName: json['productName'] as String,
//         description: json['description'] as String,
//         category: json['category'] as String,
//         price: json['price'] as num,
//         quantity: json['quantity'] as int,
//         rating: json['rating'] as num,
//         createdAt: json['createdAt'] as String,
//         updatedAt: json['updatedAt'] as String,
//         images: List<dynamic>.from(
//           (json['images'] as List<dynamic>),
//         ));
//   }

//   String toRawJson() => json.encode(toJson());

//   factory Product.fromRawJson(String source) =>
//       Product.fromJson(json.decode(source) as Map<String, dynamic>);
// }

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/others/coupon.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';

class Product {
  final String id;
  final String userId;
  final String productName;
  final String productBrand;
  final String description;
  final String category;
  final num price;
  final List<ProductVariant> productVariants;
  final List<Coupon> coupons;

  final List<dynamic> images;
  final num rating;

  final String createdAt;
  final String updatedAt;

  Product(
      {required this.id,
      required this.userId,
      required this.productName,
      required this.productBrand,
      required this.description,
      required this.category,
      required this.price,
      required this.productVariants,
      required this.coupons,
      required this.images,
      required this.rating,
      required this.createdAt,
      required this.updatedAt});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      '_id': id,
      'userId': userId,
      'productName': productName,
      'productBrand': productBrand,
      'description': description,
      'category': category,
      'price': price,
      'productVariants': productVariants.map((x) => x.toJson()).toList(),
      'coupons': coupons.map((x) => x.toJson()).toList(),
      'images': images,
      'rating': rating,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Product.fromJson(Map<String, dynamic> map) {
    return Product(
      id: map['_id'] as String,
      userId: map['userId'] as String,
      productName: map['productName'] as String,
      productBrand: map['productBrand'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      price: map['price'] as num,
      productVariants: List<ProductVariant>.from(
        (map['productVariants'] as List<dynamic>).map<ProductVariant>(
          (x) => ProductVariant.fromJson(x as Map<String, dynamic>),
        ),
      ),
      coupons: List<Coupon>.from(
        (map['coupons'] as List<dynamic>).map<Coupon>(
          (x) => Coupon.fromJson(x as Map<String, dynamic>),
        ),
      ),
      images: List<dynamic>.from((map['images'] as List<dynamic>)),
      rating: map['rating'] as num,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory Product.fromRawJson(String source) =>
      Product.fromJson(json.decode(source) as Map<String, dynamic>);
}

class CartProduct {
  final String productId;
  final String sellerId;
  final String buyerId;
  final String productBrand;
  final String productName;
  final num price;
  final ProductVariant productVariant;
  final List<Coupon> coupons;

  final dynamic image;

  final String createdAt;
  final String updatedAt;
  final String id;

  CartProduct({
    required this.productId,
    required this.sellerId,
    required this.buyerId,
    required this.productName,
    required this.productBrand,
    required this.price,
    required this.productVariant,
    required this.coupons,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
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
      'coupons': coupons.map((x) => x.toJson()).toList(),
      'image': image,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      '_id': id,
    };
  }

  factory CartProduct.fromJson(Map<String, dynamic> map) {
    return CartProduct(
      productId: map['productId'] as String,
      sellerId: map['sellerId'] as String,
      buyerId: map['buyerId'] as String,
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
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
      id: map['_id'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory CartProduct.fromRawJson(String source) =>
      CartProduct.fromJson(json.decode(source) as Map<String, dynamic>);
}
