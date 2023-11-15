import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/models/address/response/address.dart';
import 'package:trendy_treasures_seller/models/credit_card/response.dart/credit_cart.dart';
import 'package:trendy_treasures_seller/models/product/response/order_product.dart';
import 'package:trendy_treasures_seller/models/product/response/product_response.dart';
import 'package:trendy_treasures_seller/models/others/coupon.dart';
import 'package:trendy_treasures_seller/utils/list.dart';

class OrderDetailsProvider extends ChangeNotifier {
  List<CartProduct> _list = [];
  List<OrderProduct> _orderProducts = [];

  double _totalPrice = 0;
  ShippingInformation _shippingInfor = ShippingInformation(
    id: '',
    userId: '',
    createdAt: '',
    updatedAt: '',
    level1: '',
    level2: '',
    level3: '',
    phoneNumber: '',
    streetName: '',
    receiver: '',
  );

  Payment _payment = Payment(
    paymentMethod: PaymentMethod.cash.name,
  );

  CreditCard? _creditCard;

  List<CartProduct> get list => _list;

  List<OrderProduct> get orderProducts => _orderProducts;

  double get totalPrice => _totalPrice;

  ShippingInformation get address => _shippingInfor;

  CreditCard? get creditCard => _creditCard;

  Payment get payment => _payment;

  void setPayment({required Payment payment}) {
    _payment = payment;
  }

  void setCartProducts({required List<CartProduct> list}) {
    _list = list;
    _orderProducts = [];
    for (var i = 0; i < list.length; i++) {
      final product = OrderProduct(
          productId: list[i].productId,
          sellerId: list[i].sellerId,
          buyerId: list[i].buyerId,
          productName: list[i].productName,
          productBrand: list[i].productBrand,
          price: list[i].price,
          productVariant: list[i].productVariant,
          image: list[i].image);

      _orderProducts.add(product);

      // log(_orderProducts[i].toRawJson());
    }

    setTotalPrice();
  }

  double stringToNumber({required String value}) {
    double modifiedValue = double.parse(value.replaceAll("\$", ""));

    return modifiedValue;
  }

  void setTotalPrice() {
    _totalPrice = 0;
    for (var product in _orderProducts) {
      if (product.coupon != null) {
        final contain$ = product.coupon!.value.contains('\$');
        if (contain$) {
          _totalPrice += (product.price * product.productVariant.quantity -
                  product.productVariant.quantity *
                      stringToNumber(
                        value: product.coupon!.value,
                      ))
              .toDouble();
        } else {
          _totalPrice += product.price * product.productVariant.quantity -
              product.price *
                  product.productVariant.quantity *
                  double.parse(product.coupon!.value).toDouble();
        }
      } else {
        _totalPrice +=
            product.price * product.productVariant.quantity.toDouble();
      }

      notifyListeners();
    }
  }

  void setShippingInformation({required ShippingInformation address}) {
    _shippingInfor = address;
  }

  void setCoupons({required Coupon coupon}) {
    log(coupon.toRawJson());
  }

  void updateOrderProduct({required int index, required Coupon? coupon}) {
    orderProducts[index].coupon = coupon;

    setTotalPrice();
    log(orderProducts[index].toRawJson());
    notifyListeners();
  }

  void logg() {
    // for (var product in _orderProducts) {
    //   log(product.toRawJson());
    // }
    // log(address.toRawJson());
    // log(_totalPrice.toString());
    log(_payment.toRawJson());
  }
}
