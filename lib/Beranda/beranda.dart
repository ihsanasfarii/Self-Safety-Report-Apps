import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selfsafetyapp_test/Beranda/slider.dart';
import 'package:selfsafetyapp_test/Popup/popupmessage.dart';
import 'package:selfsafetyapp_test/navbar.dart';

import 'categorySelector.dart';

class beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .37,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Background.png"))),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return popupmessage();
                      }));
                    },
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,
                          height: 90,
                          width: 52,
                          child: SvgPicture.asset("assets/icon/Notif.svg"),
                        )),
                  ),
                  Text(
                    "Ingin Periksa Bencana? Bergabunglah Bersama Kami",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 221, 221, 221),
                      borderRadius: BorderRadius.circular(29.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cari",
                        icon: SvgPicture.asset("assets/icon/Search.svg"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(children: <Widget>[
                      Text(
                        "Informasi Berita",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  SizedBox(height: 5),
                  NewsCarousel(),
                  SizedBox(
                    height: 15,
                  ),
                  CategorySelector(),
                  SizedBox(
                    height: 5,
                  ),
                ]),
          )),
        ],
      ),
    );
  }
}
