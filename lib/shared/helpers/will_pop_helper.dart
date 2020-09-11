import 'package:adotai/shared/dialogs/back_alert_dialog.dart';
import 'package:flutter/material.dart';

class WillPopHelper {
  static Future<bool> onBackPressed(context) {
    return showDialog(
          context: context,
          builder: (context) => BackAlertDialog(
            onConfirm: () {
              Navigator.of(context).pop(true);
            },
          ),
        ) ??
        false;
  }
}
