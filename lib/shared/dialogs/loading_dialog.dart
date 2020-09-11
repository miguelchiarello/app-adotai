import 'package:flutter/material.dart';

class LoadingDialog {
  static BuildContext _context;

  static Future show(BuildContext context) async {
    _context = context;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            content: Container(
              padding: EdgeInsets.all(20.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  new CircularProgressIndicator(),
                  SizedBox(
                    height: 20.0,
                  ),
                  new Text("Carregando"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static void hide() async {
    Navigator.pop(_context);
  }
}
