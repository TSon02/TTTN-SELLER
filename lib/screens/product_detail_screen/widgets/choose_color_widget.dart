import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';
import 'package:trendy_treasures_seller/screens/product_detail_screen/cubit/product_detail_cubit.dart';
import 'package:trendy_treasures_seller/utils/utils.dart';

class ChooseColorWidget extends StatefulWidget {
  const ChooseColorWidget(
      {super.key,
      required this.productVariants,
      required this.indexColor,
      required this.category});
  final List<ProductVariant> productVariants;
  final String category;
  final int indexColor;

  @override
  State<ChooseColorWidget> createState() => _ChooseColorWidgetState();
}

class _ChooseColorWidgetState extends State<ChooseColorWidget> {
  List<String> colors = [];

  @override
  void initState() {
    colors = removeSimilarColor(widget.productVariants);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      elevation: 20,
      child: Container(
        width: 40,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                log(index.toString());
                context.read<ProductDetailCubit>().setIndex(indexColor: index);
                context.read<ProductDetailCubit>().setAvailable(
                    productVariants: widget.productVariants,
                    category: widget.category);
              },
              child: Container(
                width: 25,
                height: 25,
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(
                    int.parse(colors[index].replaceAll('#', ''), radix: 16),
                  ),
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  shape: BoxShape.circle,
                ),
                child: index == widget.indexColor
                    ? const Icon(
                        Icons.done,
                        size: 14,
                        color: Colors.red,
                      )
                    : null,
              ),
            );
          },
          itemCount: colors.length,
        ),
      ),
    );
  }
}
