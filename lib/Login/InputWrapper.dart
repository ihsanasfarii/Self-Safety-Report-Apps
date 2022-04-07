import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
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
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
