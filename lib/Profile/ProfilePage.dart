import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:selfsafetyapp_test/Login/InputField.dart';

import '../navbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void initState() {
    super.initState();
  }

  final String url = "http://10.128.59.61/ssra/ambildata.php";
  final String urlAdd = "http://10.128.59.61/ssra/ambildata.php";
  final TextEditingController _title = TextEditingController();
  final TextEditingController _desc = TextEditingController();
  Future<List<dynamic>> fetchApi() async {
    var res = await http.get(Uri.parse(url));
    var data = json.decode(res.body);
    return data;
  }

  Future pushApi() async {
    await http.post(Uri.parse(urlAdd), body: {
      'Nama': _title.text,
      'Email': _desc.text,
    });
  }

  @override
  final double coverHeight = 900;
  get ayam => widget.title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
      body: FutureBuilder<List<dynamic>>(
        future: fetchApi(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                if (snapshot.data[index]['Nama'] == InputField.value) {
                  return Stack(children: <Widget>[
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          color: Colors.grey,
                          child: Image.network(
                            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                            width: double.infinity,
                            height: coverHeight,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                            transform:
                                Matrix4.translationValues(0.0, 250.0, 0.0),
                            child: Stack(children: <Widget>[
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  alignment: Alignment.center,
                                  height: 90,
                                  width: 52,
                                ),
                              ),
                            ])),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 330, horizontal: 100),
                            margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color.fromARGB(255, 70, 114, 196),
                                    Color.fromARGB(255, 53, 81, 156),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                  )
                                ])),
                        Align(
                          child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 200),
                              alignment: Alignment.bottomLeft,
                              height: 200,
                              width: 300,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                    'http://assets.kompasiana.com/items/album/2021/01/12/img-20210112-195447-5ffd9c2ed541df62e72ac102.jpg?t=o&v=770'),
                              )),
                        ),
                        Align(
                          child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 200),
                              alignment: Alignment.bottomRight,
                              height: 200,
                              width: 300,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                    'http://assets.kompasiana.com/items/album/2021/01/12/img-20210112-195447-5ffd9c2ed541df62e72ac102.jpg?t=o&v=770'),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 570),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              snapshot.data[index]['Nama'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 50, 20, 545),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              snapshot.data[index]['lokasi'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 120, 20, 510),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '60                            50',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 160, 20, 490),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Pengikut                   Mengikuti',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 270, 20, 430),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '___________________________________________',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 200, 20, 435),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                            child: Text('Edit Profile'),
                            onPressed: () {},
                          ),
                        ),
                        Positioned(
                          bottom: 600.0,
                          child: CircleAvatar(
                            radius: 79,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 78,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]);
                } else {
                  ;
                  return Center();
                }
              },
            );
          } else {
            return const Center(
              child: Text('Data Not Found'),
            );
          }
          ;
        },
      ),
    );
  }
}
