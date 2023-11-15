// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/product/response/product_response.dart';

class AddProductToCartResponse {
  final bool? success;
  final String? message;
  final CartProduct? product;

  AddProductToCartResponse(this.success, this.message, this.product);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
      'product': product?.toJson(),
    };
  }

  factory AddProductToCartResponse.fromJson(Map<String, dynamic> json) {
    return AddProductToCartResponse(
      json['success'] != null ? json['success'] as bool : null,
      json['message'] != null ? json['message'] as String : null,
      json['product'] != null
          ? CartProduct.fromJson(json['product'] as Map<String, dynamic>)
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory AddProductToCartResponse.fromRawJson(String source) =>
      AddProductToCartResponse.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
