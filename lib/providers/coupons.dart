import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/models/others/coupon.dart';

class CouponsProvider extends ChangeNotifier {
  List<Coupon> _coupons = [];

  List<Coupon> get coupons => _coupons;

  void setCoupons({required List<Coupon> coupons}) {
    _coupons = coupons;
    // notifyListeners();
  }
}
