import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/models/others/coupon.dart';
import 'package:trendy_treasures_seller/widgets/subtitle_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class PromoCodeWidget extends StatelessWidget {
  const PromoCodeWidget({super.key, required this.coupon});

  final Coupon? coupon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        elevation: 10,
        shadowColor: Colors.grey[100],
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/coupon.png'),
                    ),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTextWidget(
                        title: coupon?.condition ?? 'Coupon is empty',
                        fontSize: 14,
                      ),
                      SubTitleWidget(
                          subTitle: '#${coupon?.id ?? 'XXXXXX'}', fontSize: 11),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
