// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegisterData {
  final bool? success;
  final String? message;

  RegisterData(this.success, this.message);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
    };
  }

  factory RegisterData.fromJson(Map<String, dynamic> map) {
    return RegisterData(
      map['success'] != null ? map['success'] as bool : null,
      map['message'] != null ? map['message'] as String : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory RegisterData.fromRawJson(String source) =>
      RegisterData.fromJson(json.decode(source) as Map<String, dynamic>);
}
