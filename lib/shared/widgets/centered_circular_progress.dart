import 'package:flutter/material.dart';

class CenteredCircularProgress extends StatelessWidget {
  final double size;

  const CenteredCircularProgress({
    this.size = 64.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size,
        width: size,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
