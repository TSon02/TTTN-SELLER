// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/product/response/product_response.dart';

class UploadOrUpdateProductResponse {
  final bool? success;
  final String? message;
  final Product? product;

  UploadOrUpdateProductResponse(this.success, this.message, this.product);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
      'product': product?.toJson(),
    };
  }

  factory UploadOrUpdateProductResponse.fromJson(Map<String, dynamic> json) {
    return UploadOrUpdateProductResponse(
      json['success'] != null ? json['success'] as bool : null,
      json['message'] != null ? json['message'] as String : null,
      json['product'] != null
          ? Product.fromJson(json['product'] as Map<String, dynamic>)
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory UploadOrUpdateProductResponse.fromRawJson(String source) =>
      UploadOrUpdateProductResponse.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
