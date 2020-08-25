import 'package:flutter/material.dart';
import './utils/styles.dart';
import './utils/router.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TO-DO",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Styles.appPrimaryColor,
        accentColor: Styles.appAccentColor,
        brightness: Brightness.light,
        canvasColor: Styles.appCanvasColor,
        fontFamily: 'Montserrat',
        textTheme: Styles.appTextTheme,
      ),
      initialRoute: '/splash',
      routes: appRoutes,
      
    );
  }
}
