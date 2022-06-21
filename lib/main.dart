// import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Admin/InputBerita.dart';

import 'Popup/popupmessage.dart';
import 'Register/registrasi.dart';
import 'Login/LoginPage.dart';
import 'splashscreen.dart';
import 'Beranda/beranda.dart';
import 'Profile/ProfilePage.dart';
import 'Message/pesan.dart';
import 'Profile/FotoProfile.dart';
import 'Login/InputField.dart';
import 'Message/pesan.dart';
import 'Admin/HalamanAdmin.dart';
import 'package:flutter_responsive/flutter_responsive.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await requestPermission();

  runApp(MyApp());
}

Future<void> requestPermission() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provisional permission');
  } else {
    print('User declined or has not accepted permission');
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    FirebaseMessaging.onMessage.listen((event) {
      if (event.notification != null) {
        print(event.notification!.title);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const splashscreen(),
        '/LoginPage': (context) => LoginPage(),
        '/register': (context) => registrasi(),
        '/beranda': (context) => beranda(),
        '/ProfilePage': (context) => ProfilePage(
              title: InputField.value,
            ),
        '/pesan': (context) => pesan(),
        '/popupmessage': (context) => popupmessage(),
        '/FotoProfile': (context) => ayam(),
        '/HalamanAdmin': (context) => HalamanAdmin(),
        '/InputBerita': (context) => InputBerita(),
      },
    );
  }
}
