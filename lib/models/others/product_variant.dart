// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductVariant {
  final String size;
  int quantity;
  final String hexColor;
  final String id;

  ProductVariant({
    required this.size,
    required this.quantity,
    required this.hexColor,
    required this.id,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'size': size,
      'quantity': quantity,
      'hexColor': hexColor,
      '_id': id,
    };
  }

  factory ProductVariant.fromJson(Map<String, dynamic> map) {
    return ProductVariant(
      size: map['size'] as String, // Str   ing
      quantity: map['quantity'] as int,
      hexColor: map['hexColor'] as String, // String
      id: map['_id'] as String, // String
    );
  }

  String toRawJson() => json.encode(toJson());

  factory ProductVariant.fromRawJson(String source) =>
      ProductVariant.fromJson(json.decode(source) as Map<String, dynamic>);
}

class ProductVariantRequest {
  final String size;
  int quantity;
  final String hexColor;

  ProductVariantRequest({
    required this.size,
    required this.quantity,
    required this.hexColor,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'size': size,
      'quantity': quantity,
      'hexColor': hexColor,
    };
  }

  factory ProductVariantRequest.fromJson(Map<String, dynamic> map) {
    return ProductVariantRequest(
      size: map['size'] as String, // Str   ing
      quantity: map['quantity'] as int,
      hexColor: map['hexColor'] as String, // String
    );
  }

  String toRawJson() => json.encode(toJson());

  factory ProductVariantRequest.fromRawJson(String source) =>
      ProductVariantRequest.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
