import 'package:flutter/material.dart';
import 'Header.dart';
import 'InputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/register');
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bgLogin.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Header(),
            Expanded(
                child: Container(
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}
