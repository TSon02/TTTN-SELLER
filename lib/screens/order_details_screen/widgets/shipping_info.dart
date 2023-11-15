import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/models/address/response/address.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class ShippingInfor extends StatelessWidget {
  const ShippingInfor({super.key, required this.shippingInformation});

  final ShippingInformation shippingInformation;
  @override
  Widget build(BuildContext context) {
    log(shippingInformation.toRawJson());
    return Material(
      elevation: 15,
      shadowColor: Colors.grey[100],
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const TitleTextWidget(
                  title: 'Street:',
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  shippingInformation.streetName,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 114, 114, 114)),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleTextWidget(
                  title: 'Address:',
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                    child: Text(
                  '${shippingInformation.level3}-${shippingInformation.level2}-${shippingInformation.level1}',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 114, 114, 114)),
                ))
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const TitleTextWidget(
                  title: 'Phone number:',
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  shippingInformation.phoneNumber,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 114, 114, 114)),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const TitleTextWidget(
                  title: 'Receiver:',
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  shippingInformation.receiver,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 114, 114, 114),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TitleTextWidget(
                  title: 'Country:',
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Việt Nam',
                  style: TextStyle(color: Color.fromARGB(255, 114, 114, 114)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
