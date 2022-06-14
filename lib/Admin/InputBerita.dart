import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:selfsafetyapp_test/Beranda/beranda.dart';
import 'package:selfsafetyapp_test/Profile/ProfilePage.dart';
import 'package:selfsafetyapp_test/helperurl.dart';
import 'package:selfsafetyapp_test/Profile/FotoProfile.dart';
import 'package:selfsafetyapp_test/main.dart';

class InputBerita extends StatefulWidget {
  @override
  _InputBerita createState() => _InputBerita();
}

class _InputBerita extends State<InputBerita> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            title: const Text("Input Data Berita"),
            actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: <Widget>[
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Enter your data",
                      style: TextStyle(
                        fontSize: 24,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                    // key: _formKey,
                    child: Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'First Name',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.0),
                            ),
                            border: OutlineInputBorder()),
                        onFieldSubmitted: (value) {
                          setState(() {
                            // firstName = value.capitalize();
                            // firstNameList.add(firstName);
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            // firstName = value.capitalize();
                          });
                        },
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 3) {
                            return 'First Name must contain at least 3 characters';
                          } else if (value
                              .contains(RegExp(r'^[0-9_\-=@,\.;]+$'))) {
                            return 'First Name cannot contain special characters';
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Last Name',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.0),
                            ),
                            border: OutlineInputBorder()),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 3) {
                            return 'Last Name must contain at least 3 characters';
                          } else if (value
                              .contains(RegExp(r'^[0-9_\-=@,\.;]+$'))) {
                            return 'Last Name cannot contain special characters';
                          }
                        },
                        onFieldSubmitted: (value) {
                          setState(() {
                            // lastName = value.capitalize();
                            // // lastNameList.add(lastName);
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            // lastName = value.capitalize();
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Body Temperature',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.0),
                            ),
                            border: OutlineInputBorder()),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.contains(RegExp(r'^[a-zA-Z\-]'))) {
                            return 'Use only numbers!';
                          }
                        },
                        onFieldSubmitted: (value) {
                          setState(() {
                            // bodyTemp = value;
                            // // bodyTempList.add(bodyTemp);
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            // bodyTemp = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ])))
              ]))
        ]));
  }
}
