import 'package:flutter/material.dart';
import 'Login/LoginPage.dart';
import 'Register/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const splashscreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/LoginPage': (context) => LoginPage(),
      },
    );
  }
}
