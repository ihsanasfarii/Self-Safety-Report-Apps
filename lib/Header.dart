import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              "Selamat Datang,",
              style: TextStyle(
                  color: Color.fromARGB(235, 27, 27, 27), fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "Login",
              style: TextStyle(
                  color: Color.fromARGB(235, 27, 27, 27), fontSize: 40),
            ),
          )
        ],
      ),
    );
  }
}
