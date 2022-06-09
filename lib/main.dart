import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Beranda/beranda.dart';
import 'package:selfsafetyapp_test/Login/InputField.dart';
import 'package:selfsafetyapp_test/Message/pesan.dart';
import 'Popup/popupmessage.dart';
import 'Register/registrasi.dart';
import 'Login/LoginPage.dart';
import 'splashscreen.dart';
import 'Beranda/beranda.dart';
import 'Profile/ProfilePage.dart';
import 'Message/pesan.dart';
import 'package:flutter_responsive/flutter_responsive.dart';
import 'Profile/FotoProfile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const splashscreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/LoginPage': (context) => LoginPage(),
        '/register': (context) => registrasi(),
        '/beranda': (context) => beranda(),
        '/ProfilePage': (context) => ProfilePage(title: ""),
        '/pesan': (context) => pesan(),
        '/popupmessage': (context) => popupmessage(),
        '/FotoProfile': (context) => ayam(
              Email: '',
            ),
      },
    );
  }
}
