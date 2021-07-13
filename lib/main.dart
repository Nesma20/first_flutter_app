import 'package:first_flutter_app/modules/home/home_screen.dart';
import 'package:first_flutter_app/modules/login/login_screen.dart';
import 'package:first_flutter_app/modules/messenger/messenger_screen.dart';
import 'package:first_flutter_app/modules/users/user_screen.dart';
import 'package:flutter/material.dart';

import 'modules/counter/counter_screen.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen() ,
    );
  }
}

