import 'package:flutter/material.dart';
import 'package:kangsayur/screen/getStarterPage.dart';
import 'package:kangsayur/screen/loginPage.dart';
import 'package:kangsayur/screen/starterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
            '/': (context) => GetStarterPage(),
            "/strterpage":(context)=>StarterPage(),
            '/login':(context) => LoginPage(),
      },
    );
  }
}
