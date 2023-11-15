// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/address/response/address.dart';

class ListShippingInfoResponse {
  final String? message;
  final bool? success;
  final List<ShippingInformation>? list;

  ListShippingInfoResponse({this.message, this.success, this.list});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
      'success': success,
      'list': list!.map((x) => x.toJson()).toList(),
    };
  }

  factory ListShippingInfoResponse.fromJson(Map<String, dynamic> map) {
    return ListShippingInfoResponse(
      message: map['message'] != null ? map['message'] as String : null,
      success: map['success'] != null ? map['success'] as bool : null,
      list: map['list'] != null
          ? List<ShippingInformation>.from(
              (map['list'] as List<dynamic>).map<ShippingInformation?>(
                (x) => ShippingInformation.fromJson(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory ListShippingInfoResponse.fromRawJson(String source) =>
      ListShippingInfoResponse.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
