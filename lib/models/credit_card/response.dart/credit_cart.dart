// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreditCard {
  final String userId;
  final String bank;
  final String cardNumber;
  final String fullName;
  final String expiredTime;
  final String cvv;
  final String id;

  CreditCard({
    required this.cardNumber,
    required this.fullName,
    required this.userId,
    required this.bank,
    required this.expiredTime,
    required this.id,
    required this.cvv,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'cardNumber': cardNumber,
      'userId': userId,
      'bank': bank,
      'fullName': fullName,
      'year': expiredTime,
      'cvv': cvv,
      '_id': id,
    };
  }

  factory CreditCard.fromJson(Map<String, dynamic> map) {
    return CreditCard(
      cardNumber: map['cardNumber'] as String,
      fullName: map['fullName'] as String,
      userId: map['userId'] as String,
      expiredTime: map['expiredTime'] as String,
      bank: map['bank'] as String,
      cvv: map['cvv'] as String,
      id: map['_id'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory CreditCard.fromRawJson(String source) =>
      CreditCard.fromJson(json.decode(source) as Map<String, dynamic>);
}

class Payment {
  String paymentMethod;
  String? cardId;
  String? status;

  Payment({required this.paymentMethod, this.cardId, this.status});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'paymentMethod': paymentMethod,
      'cardId': cardId,
      'status': status,
    };
  }

  factory Payment.fromJson(Map<String, dynamic> map) {
    return Payment(
      paymentMethod: map['paymentMethod'] as String,
      cardId: map['cardId'] != null ? map['cardId'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory Payment.fromRawJson(String source) =>
      Payment.fromJson(json.decode(source) as Map<String, dynamic>);
}
