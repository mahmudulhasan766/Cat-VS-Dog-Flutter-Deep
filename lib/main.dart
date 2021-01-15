import 'package:catvsdog/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:catvsdog/imp/route.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat vs Dog',
      debugShowCheckedModeBanner: false,
      //home: MySplash(),
      routes: <String, WidgetBuilder>{
        HOME_: (BuildContext context) => Home(),
        SPLASH_CREEN: (BuildContext context) => MySplash(),
      },
      initialRoute: SPLASH_CREEN,
    );
  }
}
