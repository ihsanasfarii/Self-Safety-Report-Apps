import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:selfsafetyapp_test/Beranda/beranda.dart';
import 'package:selfsafetyapp_test/Profile/ProfilePage.dart';
import 'package:selfsafetyapp_test/helperurl.dart';
import 'package:selfsafetyapp_test/Profile/FotoProfile.dart';
import 'package:selfsafetyapp_test/main.dart';
import 'package:selfsafetyapp_test/Admin/InputBerita.dart';

class HalamanAdmin extends StatefulWidget {
  @override
  _HalamanAdmin createState() => _HalamanAdmin();
}

class _HalamanAdmin extends State<HalamanAdmin> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Admin'),
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => InputBerita()));
            },
            child: const Text(
              "Input Berita",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
