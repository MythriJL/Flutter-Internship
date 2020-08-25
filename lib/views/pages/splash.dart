import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/styles.dart';
import '../pages/homepage.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool("seen") ?? false);

    if (_seen) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      await prefs.setBool("seen", true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) =>HomePage()));
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      checkFirstSeen();
    });
  }

  Widget build(BuildContext context) {
    return Container(
      color: Styles.appPrimaryColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          child: ListView(children: <Widget>[
            SizedBox(
              height: 150.0,
            ),
            Center(
              child: Text(
                "DELAT",
                style: Styles.h1White.copyWith(
                  fontSize: 45,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 5, 45, 5),
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
            Text(
              "Just Do It!",
              style: Styles.pWhite.copyWith(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ]),
        ),
      ),
    );
  }
}
