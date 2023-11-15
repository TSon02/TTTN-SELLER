// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/user/response/user_response.dart';

class LoginResponse {
  final bool? success;
  final String? message;
  final String? token;
  final User? user;

  LoginResponse(this.success, this.message, this.token, this.user);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
      'token': token,
      'user': user?.toJson(),
    };
  }

  factory LoginResponse.fromJson(Map<String, dynamic> map) {
    return LoginResponse(
      map['success'] != null ? map['success'] as bool : null,
      map['message'] != null ? map['message'] as String : null,
      map['token'] != null ? map['token'] as String : null,
      map['user'] != null
          ? User.fromJson(map['user'] as Map<String, dynamic>)
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory LoginResponse.fromRawJson(String source) =>
      LoginResponse.fromJson(json.decode(source) as Map<String, dynamic>);
}
