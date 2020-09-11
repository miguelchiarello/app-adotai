import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  final String name;
  final String email;
  final String pictureUrl;

  const CustomDrawerHeader({
    Key key,
    this.name,
    this.email,
    this.pictureUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(
        name ?? '',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      accountEmail: Text(
        email ?? '',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      currentAccountPicture: CircleAvatar(
        radius: 18,
        child: ClipOval(
          child: pictureUrl.isNotEmpty
              ? Image.network(
                  pictureUrl ?? '',
                )
              : Text('K'),
        ),
      ),
    );
  }
}
