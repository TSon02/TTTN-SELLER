import 'package:flutter/material.dart';

class OrderStatusLeading extends StatelessWidget {
  const OrderStatusLeading(
      {super.key, required this.iconData, required this.color});
  final IconData iconData;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          shape: BoxShape.rectangle,
          border: Border.all(
            width: 3,
            color: color,
          ),
        ),
        child: Icon(
          iconData,
          color: color,
        ),
      ),
      title: Divider(color: color, thickness: 2),
      // trailing: const Row(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     Text(
      //       'Confirmed',
      //       style: TextStyle(
      //         color: darkFontGrey,
      //       ),
      //     ),
      // ],
      // ),
    );
  }
}
