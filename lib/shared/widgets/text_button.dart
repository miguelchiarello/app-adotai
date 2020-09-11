import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  final String label;
  final Function onTap;

  const TextButton({
    Key key,
    this.label,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
