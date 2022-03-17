import 'package:flutter/material.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/registrasi');
          },
          backgroundColor: Color.fromARGB(255, 122, 148, 219),
          child: const Icon(Icons.navigate_next),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/homepage.png"), fit: BoxFit.cover),
            ),
          ),
        ),
        );
  }
}
