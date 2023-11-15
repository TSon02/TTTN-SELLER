// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/credit_card/response.dart/credit_cart.dart';

class CreateCardResponse {
  final String? message;
  final bool? success;
  final CreditCard? card;

  CreateCardResponse({this.message, this.success, this.card});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
      'success': success,
      'card': card?.toJson(),
    };
  }

  factory CreateCardResponse.fromJson(Map<String, dynamic> map) {
    return CreateCardResponse(
      message: map['message'] != null ? map['message'] as String : null,
      success: map['success'] != null ? map['success'] as bool : null,
      card: map['card'] != null
          ? CreditCard.fromJson(map['card'] as Map<String, dynamic>)
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory CreateCardResponse.fromRawJson(String source) =>
      CreateCardResponse.fromJson(json.decode(source) as Map<String, dynamic>);
}
