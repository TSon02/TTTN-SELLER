// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreateShippingInfoRequest {
  final String level1;
  final String level2;
  final String level3;
  final String streetName;
  final String phoneNumber;
  final String receiver;

  CreateShippingInfoRequest({
    required this.level1,
    required this.level2,
    required this.level3,
    required this.phoneNumber,
    required this.streetName,
    required this.receiver,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'level1': level1,
      'level2': level2,
      'level3': level3,
      'streetName': streetName,
      'phoneNumber': phoneNumber,
      'receiver': receiver,
    };
  }

  factory CreateShippingInfoRequest.fromJson(Map<String, dynamic> map) {
    return CreateShippingInfoRequest(
      level1: map['level1'] as String,
      level2: map['level2'] as String,
      level3: map['level3'] as String,
      streetName: map['streetName'] as String,
      phoneNumber: map['phoneNumber'] as String,
      receiver: map['receiver'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory CreateShippingInfoRequest.fromRawJson(String source) =>
      CreateShippingInfoRequest.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
