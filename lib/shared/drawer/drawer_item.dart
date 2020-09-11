import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  final int pending;
  final bool visibility;
  final bool selected;

  const DrawerItem({
    Key key,
    this.icon,
    this.text,
    this.onTap,
    this.pending = 0,
    this.selected = false,
    this.visibility = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibility,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.only(
                topRight: new Radius.circular(20.0),
                bottomRight: new Radius.circular(20.0),
              ),
              color: selected
                  ? Theme.of(context).accentColor.withOpacity(0.1)
                  : null,
            ),
            height: 40.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    icon,
                    color: selected ? Theme.of(context).primaryColor : null,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                      child: Text(
                        text,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color:
                              selected ? Theme.of(context).primaryColor : null,
                          fontWeight:
                              selected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: pending > 0,
                    child: Text(
                      pending.toString(),
                      style: TextStyle(
                        color: selected ? Theme.of(context).primaryColor : null,
                        fontWeight:
                            selected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
