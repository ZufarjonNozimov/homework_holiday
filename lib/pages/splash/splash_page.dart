import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:homework_holiday/pages/home/home_page.dart';
import 'package:homework_holiday/pages/on_boarding/on_boarding_page1.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Box authBox = Hive.box("authBox");
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      if (authBox.get("isRegister") ?? false) {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => OnBoarding(),
          ),
        );
      }
      ;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "asset/images/Splashscreen.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
