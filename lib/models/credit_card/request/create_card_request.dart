// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreateCardRequest {
  final String bank;
  final String cardNumber;
  final String fullName;
  final String expiredTime;
  final String cvv;

  CreateCardRequest(
      {required this.cardNumber,
      required this.fullName,
      required this.bank,
      required this.expiredTime,
      required this.cvv});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'cardNumber': cardNumber,
      'bank': bank,
      'fullName': fullName,
      'expiredTime': expiredTime,
      'cvv': cvv,
    };
  }

  factory CreateCardRequest.fromJson(Map<String, dynamic> map) {
    return CreateCardRequest(
      cardNumber: map['cardNumber'] as String,
      fullName: map['fullName'] as String,
      expiredTime: map['expiredTime'] as String,
      bank: map['bank'] as String,
      cvv: map['cvv'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory CreateCardRequest.fromRawJson(String source) =>
      CreateCardRequest.fromJson(json.decode(source) as Map<String, dynamic>);
}
