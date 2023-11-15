// ignore_for_file: depend_on_referenced_packages, use_build_context_synchronously

import 'dart:developer' as dev;

import 'dart:io';
import 'dart:math';

import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures_seller/constants/enum/status_type.dart';
import 'package:trendy_treasures_seller/get_it.dart';
import 'package:trendy_treasures_seller/models/others/coupon.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';
import 'package:trendy_treasures_seller/models/product/request/upload_product_request.dart';
import 'package:trendy_treasures_seller/models/product/response/product_response.dart';
import 'package:trendy_treasures_seller/providers/user_provider.dart';
import 'package:trendy_treasures_seller/repositories/data_repositories.dart';
import 'package:trendy_treasures_seller/utils/ui_helpers.dart';

part 'my_products_state.dart';
part 'my_products_cubit.freezed.dart';

class MyProductsCubit extends Cubit<MyProductsState> {
  final _dataRepository = getIt<DataRepository>();

  MyProductsCubit()
      : super(const MyProductsState.initial(data: MyProductsStateData()));

  Future<void> getProducts(BuildContext context) async {
    try {
      emit(
        MyProductsState.status(
          data: state.data!.copyWith(status: StatusType.loading),
        ),
      );
      // await Future.delayed(Duration(seconds: 3));
      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response =
          await _dataRepository.getProducts(token: userProvider.user.token!);

      dev.log(response.message!);

      dev.log(response.toRawJson());

      if (response.success == false) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(
                error: "Something went wrong!", status: StatusType.error),
          ),
        );
      } else {
        emit(
          MyProductsState.getProducts(
            data: state.data!.copyWith(
                products: response.products ?? [], status: StatusType.loaded),
          ),
        );
      }
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
      dev.log(e.toString());
    }
  }

  Future<void> delProductById(
      {required String id, required BuildContext context}) async {
    try {
      UIHelpers.showLoading();

      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response = await _dataRepository.delProductById(
          id: id, token: userProvider.user.token!);

      UIHelpers.showSnackBar(
        context: context,
        message: response.message!,
        type: response.success! ? SnackBarType.SUCCESS : SnackBarType.ERROR,
      );

      final newProducts = state.data!.products.where((product) {
        return product.id != response.product!.id;
      }).toList();

      emit(MyProductsState.delProductById(
          data: state.data!.copyWith(products: newProducts)));
    } catch (e) {
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );

      dev.log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> uploadProduct({
    required BuildContext context,
    required String productName,
    required String productBrand,
    required String description,
    required String price,
    required String category,
    required List<File> images,
    required List<ProductVariantRequest> productVariants,
    required List<Coupon> coupons,
  }) async {
    try {
      UIHelpers.showLoading();

      final userProvider = Provider.of<UserProvider>(context, listen: false);
      final random = Random().nextInt(1000);

      // print(productName);
      // print(productBrand);
      // print(description);
      // print(price.runtimeType.toString());
      // print(category);
      // print(images.toString());
      // print(productVariants.toString());

      if (images.isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Images is empty ,$random"),
          ),
        );
      } else if (productBrand.trim().isEmpty) {
        emit(
          MyProductsState.getError(
            data:
                state.data!.copyWith(error: "Product brand is empty ,$random"),
          ),
        );
      } else if (productName.trim().isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Product name is empty ,$random"),
          ),
        );
      } else if (description.trim().isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Description is empty ,$random"),
          ),
        );
      } else if (price.trim().isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Price is empty ,$random"),
          ),
        );
      } else if (double.tryParse(price)!.sign == -1) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Price is more than 0 ,$random"),
          ),
        );
      }
      //  else if (double.tryParse(price)!.) {
      //   emit(
      //     MyProductsState.getError(
      //       data: state.data!.copyWith(error: "Price is number ,$random"),
      //     ),
      //   );
      // }
      else if (productVariants.isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!
                .copyWith(error: "Tap add to add variants of product ,$random"),
          ),
        );
      } else {
        final cloudinary = CloudinaryPublic('dpw3nirfh', 'y6lfclmg');
        List<String> imageUrls = [];

        for (var i = 0; i < images.length; i++) {
          CloudinaryResponse res = await cloudinary.uploadFile(
              CloudinaryFile.fromFile(images[i].path, folder: productName));

          imageUrls.add(res.secureUrl);

          // log(imageUrls[i]);
        }

        // for (var product in productVariants) {
        //   print(product.toRawJson());
        // }

        final request = UploadOrUpdateProductRequest(
          productName: productName,
          productBrand: productBrand,
          description: description,
          category: category,
          price: double.tryParse(price)!,
          productVariants: productVariants,
          images: imageUrls,
          coupons: coupons,
        );

        dev.log(request.toRawJson());
        final response = await _dataRepository.addProduct(
            token: userProvider.user.token!, request: request);

        dev.log(response.toRawJson());

        if (response.success == false) {
          emit(MyProductsState.getError(
              data: state.data!
                  .copyWith(error: '${response.message!} ,$random')));
        } else {
          emit(MyProductsState.getError(
              data: state.data!.copyWith(error: 'Success ,$random')));
        }
      }
    } catch (e) {
      dev.log(e.toString());
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updateProduct({
    required BuildContext context,
    required String productName,
    required String productBrand,
    required String description,
    required String price,
    required String category,
    required List<File> images,
    required List<String> imagesAvailable,
    required List<ProductVariantRequest> productVariants,
    required List<Coupon> coupons,
    required String id,
  }) async {
    try {
      UIHelpers.showLoading();

      final userProvider = Provider.of<UserProvider>(context, listen: false);
      final random = Random().nextInt(1000);

      // print(productName);
      // print(productBrand);
      // print(description);
      // print(price.runtimeType.toString());
      // print(category);
      // print(images.toString());
      // print(productVariants.toString());

      if (images.isEmpty && imagesAvailable.isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Images is empty ,$random"),
          ),
        );
      } else if (productBrand.trim().isEmpty) {
        emit(
          MyProductsState.getError(
            data:
                state.data!.copyWith(error: "Product brand is empty ,$random"),
          ),
        );
      } else if (productName.trim().isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Product name is empty ,$random"),
          ),
        );
      } else if (description.trim().isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Description is empty ,$random"),
          ),
        );
      } else if (price.trim().isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Price is empty ,$random"),
          ),
        );
      } else if (double.tryParse(price)!.sign == -1) {
        emit(
          MyProductsState.getError(
            data: state.data!.copyWith(error: "Price is more than 0 ,$random"),
          ),
        );
      }
      //  else if (double.tryParse(price)!.) {
      //   emit(
      //     MyProductsState.getError(
      //       data: state.data!.copyWith(error: "Price is number ,$random"),
      //     ),
      //   );
      // }
      else if (productVariants.isEmpty) {
        emit(
          MyProductsState.getError(
            data: state.data!
                .copyWith(error: "Tap add to add variants of product ,$random"),
          ),
        );
      } else {
        List<String> imageUrls = [];
        if (images.isNotEmpty) {
          final cloudinary = CloudinaryPublic('dpw3nirfh', 'y6lfclmg');

          for (var i = 0; i < images.length; i++) {
            CloudinaryResponse res = await cloudinary.uploadFile(
                CloudinaryFile.fromFile(images[i].path, folder: productName));

            imageUrls.add(res.secureUrl);
          }
        } else {
          imageUrls.addAll(imagesAvailable);
        }

        dev.log(imageUrls.toString());
        // for (var product in productVariants) {
        //   print(product.toRawJson());
        // }

        final request = UploadOrUpdateProductRequest(
          productName: productName,
          productBrand: productBrand,
          description: description,
          category: category,
          price: double.tryParse(price)!,
          productVariants: productVariants,
          images: imageUrls,
          coupons: coupons,
        );

        dev.log(request.toRawJson());
        final response = await _dataRepository.updateProductById(
            id: id, token: userProvider.user.token!, request: request);

        dev.log(response.toRawJson());

        if (response.success == false) {
          emit(MyProductsState.getError(
              data: state.data!
                  .copyWith(error: '${response.message!} ,$random')));
        } else {
          emit(MyProductsState.getError(
              data: state.data!.copyWith(error: 'Success ,$random')));
        }
      }
    } catch (e) {
      dev.log(e.toString());
      UIHelpers.showSnackBar(
        context: context,
        message: e.toString(),
        type: SnackBarType.ERROR,
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
