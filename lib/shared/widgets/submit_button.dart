import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String label;
  final Function onTap;

  const SubmitButton({
    Key key,
    this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(20),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          color: Theme.of(context).canvasColor,
        ),
      ),
      onPressed: () {
        FocusScope.of(context).unfocus();
        onTap();
      },
    );
  }
}
