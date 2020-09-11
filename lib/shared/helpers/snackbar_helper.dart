import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class SnackBarHelper {
  static void showFailureMessage(
    BuildContext context, {
    String title,
    String message,
  }) {
    Flushbar(
      title: title,
      message: message,
      blockBackgroundInteraction: true,
      duration: Duration(seconds: 2),
      backgroundColor: Colors.red,
    )..show(context);
  }

  static void showSuccessMessage(
    BuildContext context, {
    String title,
    String message,
  }) {
    Flushbar(
      title: title,
      message: message,
      blockBackgroundInteraction: true,
      duration: Duration(seconds: 2),
      backgroundColor: Colors.green,
    )..show(context);
  }
}
