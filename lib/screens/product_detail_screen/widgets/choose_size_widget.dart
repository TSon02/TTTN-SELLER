import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';
import 'package:trendy_treasures_seller/screens/product_detail_screen/cubit/product_detail_cubit.dart';
import 'package:trendy_treasures_seller/utils/utils.dart';

// ignore: must_be_immutable
class ChooseSizeWidget extends StatefulWidget {
  const ChooseSizeWidget({
    super.key,
    required this.productVariants,
    required this.category,
    required this.indexSize,
  });

  final List<ProductVariant> productVariants;
  final String category;
  final int indexSize;

  @override
  State<ChooseSizeWidget> createState() => _ChooseSizeWidgetState();
}

class _ChooseSizeWidgetState extends State<ChooseSizeWidget> {
  List<String> sizes = [];

  @override
  void initState() {
    super.initState();

    sizes = getSizes(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    log(widget.indexSize.toString());

    // for (var productVariant in widget.productVariants) {
    //   log(productVariant.toRawJson());
    // }

    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 250,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<ProductDetailCubit>().setIndex(indexSize: index);
                  context.read<ProductDetailCubit>().setAvailable(
                        productVariants: widget.productVariants,
                        category: widget.category,
                      );
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 16,
                  ),
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: index == widget.indexSize
                          ? Colors.black
                          : Colors.white,
                      border: Border.all(
                          width: 1,
                          color: index == widget.indexSize
                              ? Colors.black
                              : const Color(0xFFDDDDDD)),
                      shape: BoxShape.circle),
                  child: Text(
                    sizes[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: index == widget.indexSize
                          ? Colors.white
                          : const Color(0xFF888888),
                      fontSize: 14,
                    ),
                  ),
                ),
              );
            },
            itemCount: sizes.length,
          ),
        ),

        //
      ],
    );
  }
}
