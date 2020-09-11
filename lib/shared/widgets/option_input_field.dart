import 'package:flutter/material.dart';

import 'custom_radio_button.dart';

class OptionInputField extends StatelessWidget {
  final String initial;
  final List<String> items;
  final Function(String) onSelected;

  const OptionInputField({
    Key key,
    this.initial,
    this.items,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomRadioButton(
      buttonLables: items,
      buttonValues: items,
      initialValue: items.indexOf(initial),
      buttonColor: Theme.of(context).canvasColor,
      selectedColor: Theme.of(context).accentColor,
      elevation: 0,
      height: 42,
      radioButtonValue: (value) {
        onSelected(value.toString());
      },
    );
  }
}
