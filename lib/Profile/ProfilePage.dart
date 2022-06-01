import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Profile/FotoProfile.dart';
import 'package:selfsafetyapp_test/navbar.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  final double coverHeight = 900;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
      body: Stack(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.grey,
                child: Image.network(
                  'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2144&q=80',
                  width: double.infinity,
                  height: coverHeight,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  transform: Matrix4.translationValues(0.0, 250.0, 0.0),
                  child: Stack(children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 136, 142, 225),
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        alignment: Alignment.center,
                        height: 90,
                        width: 52,
                        child: SvgPicture.asset("assets/icon/Detail.svg"),
                      ),
                    ),
                    Align(
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
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
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          alignment: Alignment.bottomRight,
                          height: 200,
                          width: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                                'http://assets.kompasiana.com/items/album/2021/01/12/img-20210112-195447-5ffd9c2ed541df62e72ac102.jpg?t=o&v=770'),
                          )),
                    ),
                  ])),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Haniyah Risda',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Tanggerang, Indonesia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 120, 20, 20),
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
                padding: EdgeInsets.fromLTRB(20, 160, 20, 20),
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
                padding: EdgeInsets.fromLTRB(20, 270, 20, 20),
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
                padding: EdgeInsets.fromLTRB(20, 200, 20, 190),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                bottom: 350.0,
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
        ],
      ),
    );
  }
}
