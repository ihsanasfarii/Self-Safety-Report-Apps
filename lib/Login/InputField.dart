import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xfff1f1f5),
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Masukkan Email",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xfff1f1f5),
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: TextFormField(
            obscureText: !passwordVisible,
            decoration: InputDecoration(
                hintText: "Masukkan Password",
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: IconButton(
                    color: Colors.grey,
                    onPressed: togglePassword,
                    icon: Icon(
                      passwordVisible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_off_outlined,
                    )),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
        ),
      ],
    ));
  }
}
