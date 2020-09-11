import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final bool forgetPassword;
  final Function onTap;
  final Function(String) onSaved;

  const PasswordFormField({
    Key key,
    this.onSaved,
    this.forgetPassword = true,
    this.onTap,
  }) : super(key: key);

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          obscureText: _isHidden,
          decoration: InputDecoration(
            labelText: 'Senha',
            filled: true,
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(_isHidden ? Icons.visibility_off : Icons.visibility),
              onPressed: _toggleVisibility,
            ),
          ),
          onSaved: widget.onSaved,
        ),
        Visibility(
          visible: widget.forgetPassword,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: widget.onTap,
              child: Text(
                'Esqueceu a senha ?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
