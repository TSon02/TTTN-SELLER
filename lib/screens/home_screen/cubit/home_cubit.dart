import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures_seller/constants/enum/status_type.dart';
import 'package:trendy_treasures_seller/get_it.dart';
import 'package:trendy_treasures_seller/models/product/response/product_response.dart';
import 'package:trendy_treasures_seller/providers/user_provider.dart';
import 'package:trendy_treasures_seller/repositories/data_repositories.dart';
import 'package:trendy_treasures_seller/utils/ui_helpers.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final _dataRepository = getIt<DataRepository>();

  HomeCubit() : super(const HomeState.initial(data: HomeStateData()));

  Future<void> getAllProducts(BuildContext context) async {
    try {
      emit(HomeState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final userProvider = Provider.of<UserProvider>(context, listen: false);

      final response =
          await _dataRepository.getAllProducts(token: userProvider.user.token!);

      emit(HomeState.getProducts(
          data: state.data!.copyWith(
        products: response.products ?? [],
        productsOriginal: response.products ?? [],
      )));

      setProducts(response.products!);
      changeProduct();
      emit(HomeState.status(
          data: state.data!.copyWith(status: StatusType.loaded)));

      log('products');
      for (var element in state.data!.products) {
        log(element.toRawJson());
      }
    } catch (e) {
      log('Something went wrong');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void setProducts(List<Product> products) {
    final sortProductsByDate = products.reversed.toList();
    final sortProductsByRating = products;

    sortProductsByRating.sort(
      (a, b) {
        return b.rating.compareTo(a.rating);
      },
    );
    log('setProducts');
    emit(
      HomeState.setPartOfProducts(
        data: state.data!.copyWith(
          newProducts: sortProductsByDate,
          popularProducts: sortProductsByRating,
        ),
      ),
    );
  }

  void changeProduct({String category = "Clothes"}) {
    final productsByCategory = state.data!.products.where((product) {
      return product.category == category;
    }).toList();

    emit(HomeState.setProductsByCategory(
        data: state.data!.copyWith(productsByCategory: productsByCategory)));
  }
}
