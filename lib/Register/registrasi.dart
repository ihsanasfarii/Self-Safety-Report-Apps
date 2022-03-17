import 'package:flutter/material.dart';

class registrasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        backgroundColor: Color.fromARGB(255, 122, 148, 219),
        child: const Icon(Icons.navigate_next),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background/background.png"),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
