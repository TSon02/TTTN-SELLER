import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';

class ProductVariantWidget extends StatelessWidget {
  const ProductVariantWidget({
    super.key,
    required this.productVariant,
    required this.onDelete,
  });

  final ProductVariantRequest productVariant;
  final void Function() onDelete;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(productVariant.size),
                Text(productVariant.quantity.toString()),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(int.parse(
                        productVariant.hexColor.replaceAll('#', ''),
                        radix: 16)),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onDelete,
            child: Container(
              margin: const EdgeInsets.only(right: 18),
              child: const Icon(Icons.delete),
            ),
          ),
        ],
      ),
    );
  }
}
