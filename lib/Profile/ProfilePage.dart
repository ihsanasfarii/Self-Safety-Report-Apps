import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Login/Header.dart';
import 'package:selfsafetyapp_test/Login/InputWrapper.dart';
import 'package:selfsafetyapp_test/Login/signUpButton.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/register');
      //     },
      //     backgroundColor: Color.fromARGB(255, 122, 148, 219),
      //     child: const Icon(Icons.navigate_next)),
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
              ),
            ),
            Expanded(child: SignUp()),
          ],
        ),
      ),
    );
  }
}
