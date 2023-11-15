// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegisterRequest {
  final String username;
  final String email;
  final String password;
  final String type;

  RegisterRequest(
      {required this.username,
      required this.email,
      required this.password,
      required this.type});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'username': username,
      'email': email,
      'password': password,
      'type': type,
    };
  }

  factory RegisterRequest.fromJson(Map<String, dynamic> map) {
    return RegisterRequest(
      username: map['username'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      type: map['type'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory RegisterRequest.fromRawJson(String source) =>
      RegisterRequest.fromJson(json.decode(source) as Map<String, dynamic>);
}
