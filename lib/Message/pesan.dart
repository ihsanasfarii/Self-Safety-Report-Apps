import 'package:flutter/material.dart';

class pesan extends StatefulWidget {
  const pesan({Key? key}) : super(key: key);

  @override
  State<pesan> createState() => _pesanState();
}

class _pesanState extends State<pesan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [Text("ini pesan")],
          ),
        ),
      ),
    );
  }
}
