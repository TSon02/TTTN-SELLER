// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginRequest {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory LoginRequest.fromJson(Map<String, dynamic> map) {
    return LoginRequest(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory LoginRequest.fromRawJson(String source) =>
      LoginRequest.fromJson(json.decode(source) as Map<String, dynamic>);
}
