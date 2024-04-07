// Flutter imports:
import 'package:flutter/material.dart';

class AppServices {
  void checkResponseCode(
      {required int code,
      required BuildContext context,
      required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 5),
        //backgroundColor: color.kBlackRedColor
      ),
    );
  }
}
