import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kangsayur/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, '/firstpage'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Kangsayur',
                style: headerTextStyle.copyWith(
                    fontSize: 40.04, fontWeight: semibold),
              ),
              Image.asset(
                'assets/wortel.png',
                width: 40.04,
              )
            ],
          ),
        ),
      ),
    );
  }
}
