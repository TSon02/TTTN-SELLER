// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UpdateOrderResponse {
  final String message;
  final bool success;

  UpdateOrderResponse({required this.message, required this.success});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
      'success': success,
    };
  }

  factory UpdateOrderResponse.fromJson(Map<String, dynamic> map) {
    return UpdateOrderResponse(
      message: map['message'] as String,
      success: map['success'] as bool,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory UpdateOrderResponse.fromRawJson(String source) =>
      UpdateOrderResponse.fromJson(json.decode(source) as Map<String, dynamic>);
}
