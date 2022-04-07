import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:selfsafetyapp_test/Beranda/beranda.dart';
import 'package:selfsafetyapp_test/helperurl.dart';

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  String url = MyUrl().getUrlDevice();
  final emailUser = new TextEditingController();
  final passwordUser = new TextEditingController();
  String msg = '';
  bool passwordVisible = false;

  void prosesLogin() async {
    var dataLogin = await http.post("$url/user/login", body: {
      "email": emailUser.text,
      "password": passwordUser.text,
    });

    var dataUser = json.decode(dataLogin.body);

    print(dataUser);

    // if (dataUser == null) {
    //   ScaffoldMessenger.of(context)
    //       .showSnackBar(SnackBar(content: Text("Login gagal")));
    // } else {
    //   if (dataUser != null) {
    //     Navigator.of(context).pushReplacement(
    //         MaterialPageRoute(builder: (context) => beranda()));
    //   } else {
    //     ScaffoldMessenger.of(context)
    //         .showSnackBar(SnackBar(content: Text("Data login salah")));
    //   }
    // }
    if (dataUser.length == 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Data yang anda masukkan salah atau tidak benar")));
    } else {
      if (dataUser.length != 0) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => beranda()));
      }
    }
  }

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
          height: 55,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 25,
                  offset: const Offset(0, 10))
            ],
            color: Color(0xfff1f1f5),
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: TextFormField(
            controller: emailUser,
            keyboardType: TextInputType.emailAddress,
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
          height: 55,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 25,
                  offset: const Offset(0, 10))
            ],
            color: Color(0xfff1f1f5),
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: TextFormField(
            controller: passwordUser,
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
        SizedBox(
          height: 35,
        ),
        Container(
          height: 60,
          width: 150,
          margin: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 25,
                  offset: const Offset(0, 10))
            ],
            color: Color.fromARGB(255, 111, 117, 202),
            borderRadius: BorderRadius.circular(10),
          ),
          child: FlatButton(
            onPressed: () {
              prosesLogin();
            },
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Text(
          msg,
          style: TextStyle(fontSize: 20, color: Colors.red),
        )
      ],
    ));
  }
}
