import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Profile/FotoProfile.dart';
import 'package:selfsafetyapp_test/navbar.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        bottomNavigationBar: MyBottomNavBar(),
        
        body: Stack(children: <Widget>[
 
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [

                
                Image(
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                  image: const NetworkImage(
                      'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2144&q=80'),
                ),

           Positioned(
                      bottom: -50.0,
                      child: CircleAvatar(
             radius: 80,
             backgroundColor: Colors.black,
             child: CircleAvatar(
               radius: 78,
               backgroundImage: NetworkImage(
                   'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
             ),
                      )),

       
              ]),

          Container(
              transform: Matrix4.translationValues(0.0, 250.0, 0.0),
              child: Stack(children: <Widget>[
                      
                Container(  
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 131, 137, 218),
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
                      
              ]))
        ]));
  }
}
