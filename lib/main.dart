import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/login.dart';
import 'login.dart';

void main() { // Entry point for app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { // StatelessWidget won't be changing
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity, // for ios/android differences
      ),
      home: LoginPage(), // Home page of the app
    );
  }
}

