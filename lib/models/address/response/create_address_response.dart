// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:trendy_treasures_seller/models/address/response/address.dart';

class CreateShippingInfoResponse {
  final String? message;
  final bool? success;
  final ShippingInformation? shippingInformation;

  CreateShippingInfoResponse(
      {this.message, this.success, this.shippingInformation});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
      'success': success,
      'shippingInfo': shippingInformation?.toJson(),
    };
  }

  factory CreateShippingInfoResponse.fromJson(Map<String, dynamic> map) {
    return CreateShippingInfoResponse(
      message: map['message'] != null ? map['message'] as String : null,
      success: map['success'] != null ? map['success'] as bool : null,
      shippingInformation: map['shippingInfo'] != null
          ? ShippingInformation.fromJson(
              map['shippingInfo'] as Map<String, dynamic>)
          : null,
    );
  }

  String toRawJson() => json.encode(toJson());

  factory CreateShippingInfoResponse.fromRawJson(String source) =>
      CreateShippingInfoResponse.fromJson(
          json.decode(source) as Map<String, dynamic>);
}
