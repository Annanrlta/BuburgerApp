import 'package:buburger_app/pages/landing_page.dart';
import 'package:buburger_app/pages/login_page.dart';
import 'package:buburger_app/pages/register_page.dart';
import 'package:buburger_app/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buburger App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage() ,
    );
  }
}
