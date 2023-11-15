// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/product/response/product_response.dart';

class GetCartProductsResponse {
  final bool? success;
  final String? message;
  List<CartProduct>? products;

  GetCartProductsResponse(this.success, this.message, this.products);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
      'products': products?.map((x) => x.toJson()).toList(),
    };
  }

  factory GetCartProductsResponse.fromJson(Map<String, dynamic> json) {
    return GetCartProductsResponse(
      json['success'] != null ? json['success'] as bool : null,
      json['message'] != null ? json['message'] as String : null,
      json['products'] != null
          ? List<CartProduct>.from(
              (json['products'] as List<dynamic>).map<CartProduct?>(
                (x) => CartProduct.fromJson(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory GetCartProductsResponse.fromRawJson(String source) =>
      GetCartProductsResponse.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
