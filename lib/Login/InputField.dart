import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:selfsafetyapp_test/Beranda/beranda.dart';
import 'package:selfsafetyapp_test/Profile/ProfilePage.dart';
import 'package:selfsafetyapp_test/helperurl.dart';
import 'package:selfsafetyapp_test/Profile/FotoProfile.dart';

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
  static late String value;
}

class _InputFieldState extends State<InputField> {
  String url = MyUrl().getUrlDevice();
  final emailUser = new TextEditingController();
  // static late String value;
  final passwordUser = new TextEditingController();
  bool passwordVisible = false;

  void prosesLogin() async {
    var dataLogin = await http.post("$url/login_auth/login", body: {
      "email": emailUser.text,
      "password": passwordUser.text,
    });

    var dataAuth = json.decode(dataLogin.body);

    print(dataAuth);
    if (dataAuth.length == 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Data yang anda masukkan salah atau tidak ada")));
    } else {
      if (dataAuth.length != 0) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => ProfilePage(
                  title: InputField.value,
                )));
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
                  blurRadius: 15,
                  offset: const Offset(0, 10))
            ],
            color: Color(0xfff1f1f5),
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: TextFormField(
            controller: emailUser,
            keyboardType: TextInputType.emailAddress,
            onChanged: (text) {
              InputField.value = text;
            },
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
                  blurRadius: 15,
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
          height: 50,
        ),
        Container(
          height: 50,
          width: 130,
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
      ],
    ));
  }
}
