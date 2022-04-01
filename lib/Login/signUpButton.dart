import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Belum punya akun?',
            style:
                TextStyle(color: Color.fromARGB(255, 68, 67, 67), fontSize: 18),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: const Text(
              "Daftar Akun",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
