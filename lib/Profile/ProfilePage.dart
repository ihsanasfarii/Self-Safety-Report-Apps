import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/navbar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNavBar(),
        body: Center(
            child: Container(
                transform: Matrix4.translationValues(0.0, 250.0, 0.0),
                child: Stack(children: <Widget>[
                  Container(
                    width: 250,
                    height: 650,
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(6.0),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 131, 137, 218),
                        borderRadius: BorderRadius.circular(40)),
                  )
                ]))));
  }
}
