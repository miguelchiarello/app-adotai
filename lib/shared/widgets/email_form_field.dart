import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  final Function(String) onSaved;

  const EmailFormField({
    Key key,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'E-mail',
        filled: true,
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: onSaved,
    );
  }
}
