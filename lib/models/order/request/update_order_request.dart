// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UpdateOrderRequest {
  final String id;
  final String status;

  UpdateOrderRequest({required this.id, required this.status});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'status': status,
    };
  }

  factory UpdateOrderRequest.fromJson(Map<String, dynamic> map) {
    return UpdateOrderRequest(
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory UpdateOrderRequest.fromRawJson(String source) =>
      UpdateOrderRequest.fromJson(json.decode(source) as Map<String, dynamic>);
}
