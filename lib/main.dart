import 'package:flutter/material.dart';
import 'screens/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

