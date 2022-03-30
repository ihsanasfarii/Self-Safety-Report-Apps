import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 111, 117, 202),
        borderRadius: BorderRadius.circular(10),
      ),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/beranda');
        },
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
