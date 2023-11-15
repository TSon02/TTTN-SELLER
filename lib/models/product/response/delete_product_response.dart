// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/product/response/product_response.dart';

class DeleteProductResponse {
  final bool? success;
  final String? message;
  final Product? product;

  DeleteProductResponse(this.success, this.message, this.product);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
      'product': product?.toJson(),
    };
  }

  factory DeleteProductResponse.fromJson(Map<String, dynamic> map) {
    return DeleteProductResponse(
      map['success'] != null ? map['success'] as bool : null,
      map['message'] != null ? map['message'] as String : null,
      map['product'] != null
          ? Product.fromJson(map['product'] as Map<String, dynamic>)
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory DeleteProductResponse.fromRawJson(String source) =>
      DeleteProductResponse.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
