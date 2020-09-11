import 'package:adotai/shared/service_locator.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules/signin/splash_page.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData(
        brightness: brightness,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.deepOrange,
        cursorColor: Colors.deepOrange,
        textSelectionHandleColor: Colors.deepOrangeAccent,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepOrange,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Adotai',
          theme: theme,
          home: SplashPage(),
        );
      },
    );
  }
}
