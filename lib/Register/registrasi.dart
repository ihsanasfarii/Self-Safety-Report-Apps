import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Login/LoginPage.dart';
import 'package:intl/intl.dart';

class registrasi extends StatefulWidget {
  @override
  State<registrasi> createState() => _registrasiState();
}

class _registrasiState extends State<registrasi> {
  // Date Time Picker Initiation
  DateTime selectedDate = DateTime.now();

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
                  decoration: InputDecoration(
                    focusColor: Colors.green,
                    hintText: 'password',
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
                      Text(DateFormat.yMMMMd().format(selectedDate)),
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
              height: 50,
              width: 250,
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
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content:
                            new Text("Selamat Data Registrasi Anda Berhasil"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  "Daftar",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
