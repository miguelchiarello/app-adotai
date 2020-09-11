import 'package:flutter/material.dart';

class CenteredMessage extends StatelessWidget {
  final String message;

  const CenteredMessage({
    this.message = 'Vazio',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.warning,
            size: 80,
            color: Theme.of(context).accentColor.withOpacity(0.5),
          ),
          SizedBox(height: 20.0),
          Text(
            message ?? '',
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).accentColor.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
