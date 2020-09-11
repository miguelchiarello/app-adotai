import 'package:adotai/modules/home/home_page.dart';
import 'package:adotai/modules/pets/pets_page.dart';
import 'package:adotai/modules/signin/signin_controller.dart';
import 'package:adotai/modules/signin/signin_page.dart';
import 'package:adotai/shared/dialogs/quit_dialog.dart';
import 'package:adotai/shared/helpers/navigator_helper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'custom_drawer_header.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatefulWidget {
  final int selected;

  const CustomDrawer(this.selected);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final _controller = GetIt.I<SigninController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          CustomDrawerHeader(
            name: 'Kleber de Oliveira Andrade',
            email: 'pdjkleber@gmail.com',
            pictureUrl: '',
          ),
          DrawerItem(
            icon: Icons.home,
            text: 'Página Inicial',
            selected: widget.selected == 1,
            onTap: () {
              NavigatorHelper.pushReplacement(context, HomePage());
            },
          ),
          DrawerItem(
            icon: Icons.person,
            text: 'Meu Perfil',
            selected: widget.selected == 2,
            onTap: () {
              //NavigatorHelper.pushReplacement(context, ProfilePage());
            },
          ),
          DrawerItem(
            icon: Icons.favorite,
            text: 'Adote um Pet',
            selected: widget.selected == 3,
            onTap: () {
              NavigatorHelper.pushReplacement(context, PetsPage());
            },
          ),
          DrawerItem(
            icon: Icons.question_answer,
            text: 'Dúvidas',
            selected: widget.selected == 4,
            onTap: () {
              //NavigatorHelper.pushReplacement(context, FawPage());
            },
          ),
          Divider(),
          DrawerItem(
            icon: Icons.exit_to_app,
            text: 'Sair',
            onTap: _logout,
          ),
        ],
      ),
    );
  }

  Future _logout() async {
    QuitDialog.showQuitDialog(context, onPressed: () async {
      await _controller.logout();
      NavigatorHelper.pushReplacement(context, SigninPage());
    });
  }
}
