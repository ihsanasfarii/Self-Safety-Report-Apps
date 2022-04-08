import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selfsafetyapp_test/navbar.dart';

class beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .51,
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
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 90,
                      width: 52,
                      child: SvgPicture.asset("assets/icon/Notif.svg"),
                    ),
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
                  _cardItem(1),
                  _cardItem(2),
                ]),
          )),
        ],
      ),
    );
  }

  _cardItem(Image) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(children: <Widget>[
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/image1.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0)),
        ),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Gempa Kabupaten Majene",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Lanjut Membaca >",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            )
          ],
        )
      ]),
    );
  }
}
