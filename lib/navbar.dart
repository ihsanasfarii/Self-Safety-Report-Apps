import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selfsafetyapp_test/Beranda/beranda.dart';
import 'main.dart';

import '../sumber.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Color.fromARGB(255, 132, 175, 255),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.50),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icon/Pesan.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icon/Home.svg"),
            onPressed: () {
              Navigator.pushNamed(context, '/beranda');
            },
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icon/Profil.svg"),
            onPressed: () {
            Navigator.pushNamed(context, '/ProfilePage');
            },
          ),
        ],
      ),
    );
  }
}
