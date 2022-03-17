import 'package:flutter/material.dart';

class registrasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bgLogin.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register',
              style: TextStyle(
                  color: Color.fromARGB(235, 27, 27, 27), fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
