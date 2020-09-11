import 'package:flutter/cupertino.dart';

import 'centered_circular_progress.dart';

class BusyContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final bool busy;

  const BusyContainer({
    Key key,
    this.child,
    this.padding = const EdgeInsets.all(10),
    this.busy = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (busy) return CenteredCircularProgress();

    return Container(
      padding: padding,
      child: child,
    );
  }
}
