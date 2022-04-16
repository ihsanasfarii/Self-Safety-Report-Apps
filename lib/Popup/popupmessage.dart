import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Popup/acc_popup.dart';
import 'package:selfsafetyapp_test/navbar.dart';
import 'warning_aman.dart';
import 'warning_tidak.dart';
import 'dart:ui';

class popupmessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlert(context));
    var size = MediaQuery.of(context).size;

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
                ]),
              )
            ]),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Notification",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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
                ],
              ),
            ))
          ],
        ));
  }

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
              Text("Status aman",
                  style: TextStyle(
                      color: Color.fromARGB(255, 115, 255, 119),
                      fontWeight: FontWeight.bold,
                      fontSize: 11)),
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
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(135, 135, 135, 10),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              title: Text(
                "WARNING",
                textAlign: TextAlign.center,
              ),
              content: Text(
                "Saat ini sedang terjadi gempa berkala I-II",
                textAlign: TextAlign.center,
              ),
              actions: [
                FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return warning();
                    }));
                  },
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Lanjut",
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ));
  }
}

// Navigasi dari Jawaban Pop Up Message ke pilihan AMAN/TIDAK
class warning extends popupmessage {
  // Wrapper Widget
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlert(context));
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
                ]),
              )
            ]),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("NOTIFIKASI",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35))
                ],
              ),
            ))
          ],
        ));
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            title: Text(
              "WARNING",
              textAlign: TextAlign.center,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Text(
                    "Harap beritahu kami situasi anda sekarang",
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        print("Aman");
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return warning_Aman();
                        }));
                      },
                      child: Text("Aman", textAlign: TextAlign.center),
                    ),
                    FlatButton(
                      onPressed: () {
                        print("Tidak");
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return warning_Tidak();
                        }));
                      },
                      child: Text("Tidak", textAlign: TextAlign.center),
                    )
                  ],
                )
              ],
            )));
  }
}
