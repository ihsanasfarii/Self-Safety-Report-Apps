import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'popupmessage.dart';
import 'package:selfsafetyapp_test/navbar.dart';

class acc_popup extends StatelessWidget {
<<<<<<< Updated upstream
  String status = "";
  acc_popup(String status) {
    this.status = status;
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
=======
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
>>>>>>> Stashed changes

    return Scaffold(
        bottomNavigationBar: MyBottomNavBar(),
        body: Stack(
          children: <Widget>[
            Stack(alignment: Alignment.topLeft, children: [
              Container(
                color: Color.fromARGB(255, 200, 200, 200),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, 130.0, 0.0),
                child: Stack(children: <Widget>[
                  Container(
<<<<<<< Updated upstream
                    width: double.infinity,
                    child: ListView(children: [
                      Column(
                        children: [
                          _cardWarning(),
                          SizedBox(
                            height: 10,
                          ),
                          _cardItem(),
                          SizedBox(
                            height: 40,
                          ),
                          _listNotifikasi(
                              "11.00 am", "assets/images/Rizal Maidan 1.png"),
                          SizedBox(
                            height: 0,
                          ),
                          _listNotifikasi(
                              "06.30 am", "assets/images/image 3.png")
                        ],
                      ),
                    ]),
=======
>>>>>>> Stashed changes
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 129, 142, 255),
                            Color.fromARGB(255, 135, 135, 135)
                          ],
                        )),
                  ),
<<<<<<< Updated upstream
=======
                  Align(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      alignment: Alignment.topCenter,
                      height: 300,
                      width: 300,
                      child: _cardItem(Image),
                    ),
                  )
>>>>>>> Stashed changes
                ]),
              )
            ]),
            SafeArea(
                child: Padding(
<<<<<<< Updated upstream
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Notification",
=======
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("NOTIFIKASI",
>>>>>>> Stashed changes
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
<<<<<<< Updated upstream
                          fontSize: 24)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("4 Notification")),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: (8)),
                        child: Image.asset("assets/icon/trash_full.png"),
                      )
                    ],
                  ),
=======
                          fontSize: 35))
>>>>>>> Stashed changes
                ],
              ),
            ))
          ],
        ));
  }

<<<<<<< Updated upstream
  _listNotifikasi(String jam, String gambar) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(gambar),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 270,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(200, 200, 200, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hari ini, " + jam,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Mengikuti Kamu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _cardWarning() {
    return Container(
      padding: EdgeInsets.all(20),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Image.asset("assets/icon/Vector.png"),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Warning",
                style: TextStyle(
                    color: Color.fromRGBO(200, 200, 200, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                "Gempa Disekitarmu - 3km",
                style: TextStyle(
                    color: Color.fromRGBO(200, 200, 200, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              Text("Pembaruan 1 menit yang lalu",
                  style: TextStyle(
                      color: Color.fromRGBO(200, 200, 200, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 12)),
              if (status == "aman") ...[
                Text("Status aman",
                    style: TextStyle(
                        color: Color.fromARGB(255, 115, 255, 119),
                        fontWeight: FontWeight.bold,
                        fontSize: 11)),
              ] else ...[
                Text(
                  "Status: Darurat",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 255, 155, 155)),
                )
              ],
            ],
          )
        ],
      ),
    );
  }

  _cardItem() {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          Container(
            width: 280,
            height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 196, 196, 196),
                shape: BoxShape.rectangle,
=======
  _cardItem(Image) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 100.0,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 196, 196, 196),
                shape: BoxShape.rectangle,
                image: const DecorationImage(
                    image: AssetImage("assets/images/Adam Firdaus 2.png"),
                    scale: 1.0,
                    alignment: Alignment.centerLeft),
>>>>>>> Stashed changes
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(135, 135, 135, 10),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
<<<<<<< Updated upstream
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WARNING",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/Adam Firdaus 2.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "m_adamnn",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Gempa di Sukabumi",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Jarak: 75 Km dari arah utara",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Text(
                            "Pembaruan: 2 hari yang lalu",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Text(
                            "Status: aman",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 10, color: Colors.green),
                          )
                        ],
                      )
                    ]),
=======
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "m_adamnn",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Gempa di Sukabumi",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "Jarak: 75 Km dari arah utara",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
                Text(
                  "Pembaruan: 2 hari yang lalu",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
                Text(
                  "Status: aman",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 10, color: Colors.green),
                )
>>>>>>> Stashed changes
              ],
            ),
          ),
        ],
      ),
    );
<<<<<<< Updated upstream
=======
    
  }
    
    
    
    return Scaffold(
        backgroundColor: Color.fromRGBO(135, 135, 135, 100),
        body: Column(
          children: <Widget>[
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(129, 141, 255, 100),
                          Color.fromRGBO(135, 135, 135, 100)
                        ],
                      )),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 80, 80, 100),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WARNING",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(196, 196, 196, 100),
                          ),
                        ),
                        Text(
                          "Terjadi gempa radius < 3 km dari tempat anda berada",
                          style: TextStyle(
                              color: Color.fromRGBO(196, 196, 196, 100)),
                        ),
                        Text(
                          "Pembaruan: 1 menit yang lalu",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(196, 196, 196, 100)),
                        ),
                        Flexible(
                            child: Icon(Icons.warning_outlined,
                                size: 10,
                                color: Color.fromRGBO(196, 196, 196, 100))),
                      ],
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 100),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(10),
                              spreadRadius: 5,
                              blurRadius: 4,
                              offset: Offset(0, 3))
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "m_adamnn",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Gempa di Sukabumi",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(135, 135, 135, 100)),
                        ),
                        Text(
                          "Jarak: 75 Km dari arah utara",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Text(
                          "Pembaruan: 2 hari yang lalu",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        Text(
                          "Status: aman",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 10, color: Colors.green),
                        ),
                        Flexible(
                            child: Image.asset(
                          "asset/Adam Firdaus 2.png",
                          height: 10,
                          width: 10,
                          fit: BoxFit.contain,
                        ))
                      ],
                    ))
              ],
            )
          ],
        ));
>>>>>>> Stashed changes
  }
}
