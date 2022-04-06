import 'package:flutter/material.dart';

import 'Button.dart';
import 'InputField.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            child: InputField(),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Lupa kata sandi anda?",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 32,
          ),
          Button(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
