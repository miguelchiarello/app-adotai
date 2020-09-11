import 'package:flutter/material.dart';

class NavigatorHelper {
  static Future<dynamic> push(BuildContext context, Widget page) async {
    return await Navigator.push(
        context, MaterialPageRoute(builder: (context) => page));
  }

  static void pop(BuildContext context, {result}) async {
    Navigator.pop(context, result);
  }

  static Future<dynamic> pushReplacement(
      BuildContext context, Widget page) async {
    return await Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }
}
