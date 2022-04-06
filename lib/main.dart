import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Beranda/beranda.dart';
import 'Register/registrasi.dart';
import 'Login/LoginPage.dart';
import 'splashscreen.dart';
import 'Beranda/beranda.dart';
import 'Profile/ProfilePage.dart';
import 'package:flutter_responsive/flutter_responsive.dart';

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
        '/register': (context) => registrasi(),
        '/beranda': (context) => beranda(),
        '/ProfilePage': (context) => ProfilePage(),
      },
      // home: beranda(),
    );
  }
}
