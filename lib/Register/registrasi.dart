import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Login/LoginPage.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:selfsafetyapp_test/helperurl.dart';
import 'package:selfsafetyapp_test/Login/LoginPage.dart';

class registrasi extends StatefulWidget {
  @override
  _registrasiState createState() => _registrasiState();
}

class _registrasiState extends State<registrasi> {
  String url = MyUrl().getUrlDevice();
  // Date Time Picker Initiation
  DateTime selectedDate = new DateTime.now();
  final emailUser = new TextEditingController();
  final passwordUser = new TextEditingController();
  final namaUser = new TextEditingController();
  final no_telpUser = new TextEditingController();

  final lokasiUser = new TextEditingController();
  bool passwordVisible = false;

  void prosesRegister() async {
    var dataRegister = await http.post("$url/register_auth/tambahUser", body: {
      "nama": namaUser.text,
      "email": emailUser.text,
      "password": passwordUser.text,
      "no_telp": no_telpUser.text,
      "tgl_lahir": selectedDate.toString(),
      "lokasi": lokasiUser.text,
    });

    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Selamat Akun Anda Berhasil Dibuat")));
  }

  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/bgDaftarAkun.png'),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Daftar \n Akun",
                style: TextStyle(
                    color: Color.fromARGB(235, 27, 27, 27),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama Pengguna'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: namaUser,
                  decoration: InputDecoration(
                    hintText: 'Nama Lengkap',
                    focusColor: Colors.green,
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: emailUser,
                  decoration: InputDecoration(
                    hintText: 'example@gmail.com',
                    focusColor: Colors.green,
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kata Sandi'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: passwordUser,
                  obscureText: !passwordVisible,
                  decoration: InputDecoration(
                    focusColor: Colors.green,
                    hintText: 'password',
                    suffixIcon: IconButton(
                        color: Colors.grey,
                        onPressed: togglePassword,
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_off_outlined,
                        )),
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('No Telepon'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: no_telpUser,
                  decoration: InputDecoration(
                    hintText: '08xxxxxxxxxxxx',
                    focusColor: Colors.green,
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tanggal Lahir'),
                SizedBox(
                  height: 8,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      OutlineButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2050),
                          ).then(
                            (value) {
                              if (value != null) {
                                setState(
                                  () {
                                    selectedDate = value;
                                  },
                                );
                              }
                              ;
                            },
                          );
                        },
                        child: Text('Pilih Tanggal'),
                      ),
                      Text(
                        (DateFormat.yMMMMd().format(selectedDate)),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lokasi'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: lokasiUser,
                  decoration: InputDecoration(
                    hintText: 'Lokasi Tinggal',
                    focusColor: Colors.green,
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
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
                  prosesRegister();
                },
                child: const Text(
                  "Register",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            // GestureDetector(
            //   onTap: () {
            //     prosesRegister();
            //   },
            //   child: Container(
            //     height: 50,
            //     width: 250,
            //     margin: EdgeInsets.symmetric(horizontal: 50),
            //     decoration: BoxDecoration(
            //       boxShadow: [
            //         BoxShadow(
            //             color: Colors.black38,
            //             blurRadius: 25,
            //             offset: const Offset(0, 10))
            //       ],
            //       color: Color.fromARGB(255, 111, 117, 202),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: FlatButton(
            //       onPressed: () {
            //         showDialog(
            //           context: context,
            //           builder: (BuildContext context) {
            //             return AlertDialog(
            //               content:
            //                   new Text("Selamat Data Registrasi Anda Berhasil"),
            //               actions: <Widget>[
            //                 new FlatButton(
            //                   child: new Text("OK"),
            //                   onPressed: () {
            //                     Navigator.of(context).pop();
            //                   },
            //                 ),
            //               ],
            //             );
            //           },
            //         );
            //       },
            //       child: const Text(
            //         "Daftar",
            //         style: TextStyle(fontSize: 20),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
