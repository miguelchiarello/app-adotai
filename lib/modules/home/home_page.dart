import 'package:adotai/shared/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Página Inicial")),
      drawer: CustomDrawer(1),
      body: WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Container(),
      ),
    );
  }
}
