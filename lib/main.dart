import 'package:first_flutter_app/home_screen.dart';
import 'package:first_flutter_app/login_screen.dart';
import 'package:first_flutter_app/messenger_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen() ,
    );
  }
}

