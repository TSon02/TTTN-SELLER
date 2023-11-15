import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures_seller/models/others/coupon.dart';
import 'package:trendy_treasures_seller/providers/coupons.dart';
import 'package:trendy_treasures_seller/utils/list.dart';

// ignore: must_be_immutable
class SelectCoupons extends StatefulWidget {
  SelectCoupons({
    super.key,
    required this.category,
    this.initialValue,
  });
  final String? category;
  List<Coupon>? initialValue;
  @override
  State<SelectCoupons> createState() => _SelectCouponsState();
}

class _SelectCouponsState extends State<SelectCoupons> {
  List<Coupon> coupons = [];
  // List<Coupon> selectedCoupons = [];

  void selectCoupons(List<Coupon> coupons) {
    context.read<CouponsProvider>().setCoupons(coupons: coupons);
  }

  @override
  Widget build(BuildContext context) {
    final couponsProvider = context.watch<CouponsProvider>();
    // Provider.of<CouponsProvider>(context);

    switch (widget.category) {
      case 'Clothes':
        coupons = clothesCoupons;
        break;

      case 'Bags':
        coupons = bagCoupons;
        break;

      case 'Shoes':
        coupons = shoesCoupons;
        break;

      case 'Electronics':
        coupons = electronicCoupons;
        break;

      case 'Jewelry':
        coupons = jewelryCoupons;
        break;
      default:
        coupons = [];
    }

    List<MultiSelectItem<Coupon>> items = [];

    if (widget.category != null) {
      items = coupons
          .map((coupon) => MultiSelectItem<Coupon>(coupon, coupon.condition))
          .toList();
    }

    return Column(
      children: [
        AbsorbPointer(
          absorbing: widget.category != null ? false : true,
          child: MultiSelectDialogField(
            items: items,
            initialValue: widget.initialValue ?? <Coupon>[],
            // initialValue: widget.initialValue!,
            title: const Text("Coupons"),
            selectedColor: Colors.blue,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
            ),
            buttonIcon: const Icon(
              Icons.pets,
              color: Colors.blue,
            ),
            buttonText: Text(
              "Select Coupons",
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 16,
              ),
            ),
            onConfirm: (results) {
              log(results.toString());
              log(couponsProvider.coupons.toString());

              couponsProvider.setCoupons(coupons: results);

              log(couponsProvider.coupons.toString());
            },

            // onConfirm: selectCoupons,
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
