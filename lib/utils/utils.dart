// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';
import 'package:trendy_treasures_seller/screens/auth_screen/login_screen/login_screen.dart';
import 'package:trendy_treasures_seller/utils/list.dart';

Future<List<File>> pickImages() async {
  List<File> images = [];

  try {
    final files = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );

    if (files != null && files.files.isNotEmpty) {
      for (var file in files.files) {
        images.add(File(file.path!));
      }
    }
  } catch (e) {
    log(e.toString());
  }

  return images;
}

List<String> getSizes(String category) {
  List<String> sizes = [];
  switch (category) {
    case "Clothes":
      sizes = clotheSizes;
      break;
    case "Shoes":
      sizes = shoesSizes;
      break;
    default:
      sizes = others;
      break;
  }

  return sizes;
}

List<String> removeSimilarColor(List<ProductVariant> productVariants) {
  List<String> colors = [];
  for (var productVariant in productVariants) {
    if (!colors.contains(productVariant.hexColor)) {
      colors.add(productVariant.hexColor);
    }
  }

  return colors;
}

Future<void> logOut({required BuildContext context}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.setString('x-auth-token', '');

  await PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: LoginScreen.provider(),
    withNavBar: false,
    pageTransitionAnimation: PageTransitionAnimation.cupertino,
  );
}
