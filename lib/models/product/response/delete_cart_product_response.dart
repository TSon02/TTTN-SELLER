// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DeleteCartProductResponse {
  final bool? success;
  final String? message;

  DeleteCartProductResponse({required this.success, required this.message});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
    };
  }

  factory DeleteCartProductResponse.fromJson(Map<String, dynamic> map) {
    return DeleteCartProductResponse(
      success: map['success'] != null ? map['success'] as bool : null,
      message: map['message'] != null ? map['message'] as String : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory DeleteCartProductResponse.fromRawJson(String source) =>
      DeleteCartProductResponse.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
