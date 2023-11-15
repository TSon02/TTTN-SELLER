import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/models/product/response/product_response.dart';
import 'package:trendy_treasures_seller/screens/home_screen/widgets/product_widget.dart';

class GridCategoryProducts extends StatelessWidget {
  const GridCategoryProducts(
      {super.key, required this.products, this.aspectRatio = 0.63});
  final List<Product> products;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 14,
      mainAxisSpacing: 24,
      childAspectRatio: aspectRatio,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
        products.length,
        (index) => ProductWidget(product: products[index]),
      ),
    );
  }
}
