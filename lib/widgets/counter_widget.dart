import 'dart:developer';

import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget(
      {super.key,
      required this.quantity,
      required this.onAction,
      required this.available});
  final int quantity;
  final int available;
  final void Function(bool isIncrease, int available) onAction;
  @override
  Widget build(BuildContext context) {
    // log('quantity');
    // log(quantity.toString());
    // log('available');
    // log(available.toString());
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 80,
      decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          // color: Colors.white,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              log('remove');

              onAction(false, available);
            },
            child: const Icon(
              Icons.remove,
              size: 15,
            ),
          ),
          Text(
            quantity.toString(),
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          GestureDetector(
            onTap: () {
              log('add');
              onAction(true, available);
            },
            child: const Icon(
              Icons.add,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}
