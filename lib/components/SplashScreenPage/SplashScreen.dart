import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cmms_ge/components/Widgets/bottomnavigation.dart';
import 'package:cmms_ge/utils/warna.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 15), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNavigation()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: thirdcolor,
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              child: Image.asset(
                "assets/images/gelogo.png",
                alignment: Alignment.center,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [TypewriterAnimatedText('GRAND ELEPHANT')],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
