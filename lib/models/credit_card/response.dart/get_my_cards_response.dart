// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/credit_card/response.dart/credit_cart.dart';

class GetMyCardsResponse {
  final String? message;
  final bool? success;
  final List<CreditCard>? cards;

  GetMyCardsResponse(
      {required this.message, required this.success, required this.cards});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
      'success': success,
      'cards': cards!.map((x) => x.toJson()).toList(),
    };
  }

  factory GetMyCardsResponse.fromJson(Map<String, dynamic> map) {
    return GetMyCardsResponse(
      message: map['message'] != null ? map['message'] as String : null,
      success: map['success'] != null ? map['success'] as bool : null,
      cards: map['cards'] != null
          ? List<CreditCard>.from(
              (map['cards'] as List<dynamic>).map<CreditCard?>(
                (x) => CreditCard.fromJson(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory GetMyCardsResponse.fromRawJson(String source) =>
      GetMyCardsResponse.fromJson(json.decode(source) as Map<String, dynamic>);
}
