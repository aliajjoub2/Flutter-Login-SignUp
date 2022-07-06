import 'package:flutter/material.dart';
import 'package:login_flutter/signup.dart';
import 'package:login_flutter/welcome.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Named Routes Demo',
  // Start the app with the "/" named route. In this case, the app starts
  // on the FirstScreen widget.
  initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the Welcome widget.
    '/': (context) => const Welcome(),
    // When navigating to the "/login" route, build the Login widget.
    '/login': (context) => const Login(),
    '/signup': (context) => const Signup(),
  },
    );
  }
}

