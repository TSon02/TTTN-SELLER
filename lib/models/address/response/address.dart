import 'dart:convert';

class ShippingInformation {
  final String id;
  final String level1;
  final String level2;
  final String level3;
  final String streetName;
  final String phoneNumber;
  final String receiver;

  final String userId;
  final String createdAt;
  final String updatedAt;

  ShippingInformation({
    required this.id,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
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
      '_id': id,
      'level2': level2,
      'level3': level3,
      'streetName': streetName,
      'phoneNumber': phoneNumber,
      'receiver': receiver,
      'userId': userId,
      'createdAt': createdAt,
      'updateAt': updatedAt,
    };
  }

  factory ShippingInformation.fromJson(Map<String, dynamic> map) {
    return ShippingInformation(
      id: map['_id'] as String,
      level1: map['level1'] as String,
      level2: map['level2'] as String,
      level3: map['level3'] as String,
      streetName: map['streetName'] as String,
      phoneNumber: map['phoneNumber'] as String,
      receiver: map['receiver'] as String,
      userId: map['userId'] as String,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory ShippingInformation.fromRawJson(String source) =>
      ShippingInformation.fromJson(json.decode(source) as Map<String, dynamic>);
}
