import 'package:flutter/material.dart';
import 'package:salon_booking/Calendar/Calendar_main.dart';
import 'package:salon_booking/screens/login_page.dart';
import 'package:salon_booking/screens/signup_page.dart';
import 'package:salon_booking/screens/welcome_page.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: WelcomePage(),
    );
  }
}
