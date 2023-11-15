// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures_seller/constants/enum/status_type.dart';
import 'package:trendy_treasures_seller/get_it.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';
import 'package:trendy_treasures_seller/models/product/request/add_cart_request.dart';
import 'package:trendy_treasures_seller/models/product/response/product_response.dart';
import 'package:trendy_treasures_seller/providers/user_provider.dart';
import 'package:trendy_treasures_seller/repositories/data_repositories.dart';
import 'package:trendy_treasures_seller/utils/ui_helpers.dart';
import 'package:trendy_treasures_seller/utils/utils.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

part 'product_detail_state.dart';
part 'product_detail_cubit.freezed.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  final _dataRepository = getIt<DataRepository>();

  ProductDetailCubit()
      : super(const ProductDetailState.initial(data: ProductDetailStateData()));

  Future<void> addToCart({
    required int quantity,
    required Product product,
    required String category,
    required BuildContext context,
  }) async {
    try {
      UIHelpers.showLoading();

      final token =
          Provider.of<UserProvider>(context, listen: false).user.token;

      final sizes = getSizes(category);
      final sizeChoose = sizes[state.data!.indexSize];

      final colors = removeSimilarColor(product.productVariants);
      final colorChoose = colors[state.data!.indexColor];

      final productVariantChosen = product.productVariants
          .where((e) => sizeChoose == e.size && colorChoose == e.hexColor)
          .first;

      final ProductVariant productVariant = ProductVariant(
          size: productVariantChosen.size,
          quantity: quantity,
          hexColor: productVariantChosen.hexColor,
          id: productVariantChosen.id);

      final request = AddProductToCartRequest(
        productId: product.id,
        sellerId: product.userId,
        productName: product.productName,
        productBrand: product.productBrand,
        price: product.price,
        productVariant: productVariant,
        coupons: product.coupons,
        image: product.images[0],
      );

      log(request.toRawJson());

      final response = await _dataRepository.addProductToCart(
          request: request, token: token!);

      // UIHelpers.showSnackBar(
      //   context: context,
      //   message: response.message!,
      //   type: response.success! ? SnackBarType.SUCCESS : SnackBarType.ERROR,
      // );

      AwesomeDialog(
        context: context,
        dialogType: response.success! ? DialogType.success : DialogType.error,
        animType: AnimType.rightSlide,
        title: response.success! ? 'Success' : 'Error',
        desc: response.message,
        btnOkOnPress: () {},
      ).show();

      // log(response.product!.toRawJson());
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void setIndex({int? indexColor, int? indexSize}) {
    if (indexSize != null) {
      log('set size index');

      emit(ProductDetailState.setIndex(
          data: state.data!.copyWith(indexSize: indexSize)));
    } else {
      log('set color index');

      emit(ProductDetailState.setIndex(
          data: state.data!.copyWith(indexColor: indexColor!)));
    }
  }

  void setAvailable({
    required List<ProductVariant> productVariants,
    required String category,
  }) {
    log('set available');
    List<String> sizes = [];
    List<String> colors = [];

    // remove similar color
    // for (var productVariant in productVariants) {
    //   if (!colors.contains(productVariant.hexColor)) {
    //     colors.add(productVariant.hexColor);
    //   }
    // }

    colors = removeSimilarColor(productVariants);
    log(colors.toString());

    // get sizes
    sizes = getSizes(category);

    // get color choose
    final sizeChoose = sizes[state.data!.indexSize];
    final colorChoose = colors[state.data!.indexColor];

    // set available product
    for (var productVariant in productVariants) {
      if (productVariant.size == sizeChoose &&
          productVariant.hexColor == colorChoose) {
        return emit(
          ProductDetailState.setAvailable(
            data: state.data!.copyWith(available: productVariant.quantity),
          ),
        );
      }
      emit(
        ProductDetailState.setAvailable(
          data: state.data!.copyWith(available: 0),
        ),
      );
    }
    log('sizeChoose.toString()');
    log(sizeChoose.toString());

    log('colorChoose.toString()');
    log(colorChoose.toString());
  }
}
