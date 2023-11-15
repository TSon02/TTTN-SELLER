// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/order/response/order.dart';

class GetMyOrdersResponse {
  final String? message;
  final bool? success;
  final List<Order>? orders;

  GetMyOrdersResponse({this.message, this.success, this.orders});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
      'success': success,
      'orders': orders!.map((x) => x.toJson()).toList(),
    };
  }

  factory GetMyOrdersResponse.fromJson(Map<String, dynamic> map) {
    return GetMyOrdersResponse(
      message: map['message'] != null ? map['message'] as String : null,
      success: map['success'] != null ? map['success'] as bool : null,
      orders: map['orders'] != null
          ? List<Order>.from(
              (map['orders'] as List<dynamic>).map<Order?>(
                (x) => Order.fromJson(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory GetMyOrdersResponse.fromRawJson(String source) =>
      GetMyOrdersResponse.fromJson(json.decode(source) as Map<String, dynamic>);
}
