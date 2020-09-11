import 'package:adotai/modules/home/home_page.dart';
import 'package:adotai/modules/signin/signin_controller.dart';
import 'package:adotai/modules/signin/signin_page.dart';
import 'package:adotai/shared/helpers/navigator_helper.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _controller = SigninController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initialize();
    });
  }

  Future<void> _initialize() async {
    await Future.delayed(Duration(seconds: 4));
    final connected = await _controller.getCurrentUser();

    if (connected)
      NavigatorHelper.pushReplacement(context, HomePage());
    else
      NavigatorHelper.pushReplacement(context, SigninPage());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('lib/assets/splashscreen.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: width * 0.1,
                width: width * 0.1,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              ),
              left: (width * 0.5) - (width * 0.10) * 0.5,
              right: (width * 0.5) - (width * 0.10) * 0.5,
              bottom: height * 0.10,
            )
          ],
        ),
      ),
    );
  }
}
