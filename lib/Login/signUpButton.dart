import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Belum punya akun?',
            style: TextStyle(
                color: Color.fromARGB(255, 68, 67, 67),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: const Text(
              "Daftar Akun",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
