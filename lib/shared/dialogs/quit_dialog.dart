import 'package:flutter/material.dart';

class QuitDialog {
  static Future showQuitDialog(context, {Function onPressed}) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text("Sair"),
            content: Text("Você realmente deseja sair do aplicativo?"),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  "SIM",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  onPressed();
                },
              ),
              FlatButton(
                child: Text(
                  "NÃO",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
