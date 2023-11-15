// ignore_for_file: constant_identifier_names

import 'package:bmprogresshud/bmprogresshud.dart';
import 'package:flutter/material.dart';

enum SnackBarType {
  SUCCESS,
  ERROR,
  WARNING,
}

class UIHelpers {
  static void showLoading({String message = "Loading"}) {
    ProgressHud.showLoading(text: message);
  }

  static void dismissLoading() async {
    await Future.delayed(const Duration(microseconds: 500), () {
      ProgressHud.dismiss();
    });
  }

  static Future<void> showSnackBar({
    String message = '',
    SnackBarType type = SnackBarType.SUCCESS,
    required BuildContext context,
  }) async {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    Color? bgColor;
    if (type == SnackBarType.SUCCESS) {
      bgColor = Colors.green;
    } else if (type == SnackBarType.ERROR) {
      bgColor = Colors.red;
    } else {
      bgColor = Colors.orange;
    }
    final snackBar = SnackBar(
      backgroundColor: bgColor,
      content: Text(
        message,
      ),
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
