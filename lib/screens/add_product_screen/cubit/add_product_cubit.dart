// import 'dart:io';
// import 'dart:math';
// import 'dart:developer' as dev;

// import 'package:cloudinary_public/cloudinary_public.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:provider/provider.dart';
// import 'package:trendy_treasures_seller/get_it.dart';
// import 'package:trendy_treasures_seller/models/others/coupon.dart';
// import 'package:trendy_treasures_seller/models/others/product_variant.dart';
// import 'package:trendy_treasures_seller/models/product/request/upload_product_request.dart';
// import 'package:trendy_treasures_seller/providers/user_provider.dart';
// import 'package:trendy_treasures_seller/repositories/data_repositories.dart';
// import 'package:trendy_treasures_seller/utils/ui_helpers.dart';

// part 'add_product_state.dart';
// part 'add_product_cubit.freezed.dart';

// class AddProductCubit extends Cubit<AddProductState> {
//   final _dataRepository = getIt<DataRepository>();

//   AddProductCubit()
//       : super(const AddProductState.initial(data: AddProductStateData()));

//   Future<void> uploadProduct({
//     required BuildContext context,
//     required String productName,
//     required String productBrand,
//     required String description,
//     required String price,
//     required String category,
//     required List<File> images,
//     required List<ProductVariantRequest> productVariants,
//     required List<Coupon> coupons,
//   }) async {
//     try {
//       UIHelpers.showLoading();

//       final userProvider = Provider.of<UserProvider>(context, listen: false);
//       final random = Random().nextInt(1000);

//       // print(productName);
//       // print(productBrand);
//       // print(description);
//       // print(price.runtimeType.toString());
//       // print(category);
//       // print(images.toString());
//       // print(productVariants.toString());

//       if (images.isEmpty) {
//         emit(
//           AddProductState.getError(
//             data: state.data!.copyWith(error: "Images is empty ,$random"),
//           ),
//         );
//       } else if (productBrand.trim().isEmpty) {
//         emit(
//           AddProductState.getError(
//             data:
//                 state.data!.copyWith(error: "Product brand is empty ,$random"),
//           ),
//         );
//       } else if (productName.trim().isEmpty) {
//         emit(
//           AddProductState.getError(
//             data: state.data!.copyWith(error: "Product name is empty ,$random"),
//           ),
//         );
//       } else if (description.trim().isEmpty) {
//         emit(
//           AddProductState.getError(
//             data: state.data!.copyWith(error: "Description is empty ,$random"),
//           ),
//         );
//       } else if (price.trim().isEmpty) {
//         emit(
//           AddProductState.getError(
//             data: state.data!.copyWith(error: "Price is empty ,$random"),
//           ),
//         );
//       } else if (double.tryParse(price)!.sign == -1) {
//         emit(
//           AddProductState.getError(
//             data: state.data!.copyWith(error: "Price is more than 0 ,$random"),
//           ),
//         );
//       }
//       //  else if (double.tryParse(price)!.) {
//       //   emit(
//       //     AddProductState.getError(
//       //       data: state.data!.copyWith(error: "Price is number ,$random"),
//       //     ),
//       //   );
//       // }
//       else if (productVariants.isEmpty) {
//         emit(
//           AddProductState.getError(
//             data: state.data!
//                 .copyWith(error: "Tap add to add variants of product ,$random"),
//           ),
//         );
//       } else {
//         final cloudinary = CloudinaryPublic('dpw3nirfh', 'y6lfclmg');
//         List<String> imageUrls = [];

//         for (var i = 0; i < images.length; i++) {
//           CloudinaryResponse res = await cloudinary.uploadFile(
//               CloudinaryFile.fromFile(images[i].path, folder: productName));

//           imageUrls.add(res.secureUrl);

//           // log(imageUrls[i]);
//         }

//         // for (var product in productVariants) {
//         //   print(product.toRawJson());
//         // }

//         final request = UploadProductRequest(
//           productName: productName,
//           productBrand: productBrand,
//           description: description,
//           category: category,
//           price: double.tryParse(price)!,
//           productVariants: productVariants,
//           images: imageUrls,
//           coupons: coupons,
//         );

//         dev.log(request.toRawJson());
//         final response = await _dataRepository.addProduct(
//             token: userProvider.user.token!, request: request);

//         dev.log(response.toRawJson());

//         if (response.success == false) {
//           emit(AddProductState.getError(
//               data: state.data!
//                   .copyWith(error: '${response.message!} ,$random')));
//         } else {
//           emit(AddProductState.getError(
//               data: state.data!.copyWith(error: 'Success ,$random')));
//         }
//       }
//     } catch (e) {
//       dev.log(e.toString());
//       // ignore: use_build_context_synchronously
//       UIHelpers.showSnackBar(
//         context: context,
//         message: e.toString(),
//         type: SnackBarType.ERROR,
//       );
//     } finally {
//       UIHelpers.dismissLoading();
//     }
//   }
// }
