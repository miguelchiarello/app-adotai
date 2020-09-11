import 'package:flutter/material.dart';

class BackAlertDialog extends StatelessWidget {
  final Function onConfirm;

  const BackAlertDialog({
    Key key,
    this.onConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Text('Sair?'),
      content: new Text('Você tem certeza que deseja sair?'),
      actions: <Widget>[
        new FlatButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: new Text('Não'),
        ),
        new FlatButton(
          onPressed: onConfirm,
          child: new Text('Sim'),
        ),
      ],
    );
  }
}
