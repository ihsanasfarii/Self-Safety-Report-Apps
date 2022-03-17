import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bgLogin.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Header(),
            Expanded(
                child: Container(
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}
      // body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage("assets/bg.Login.png")),
//           gradient: LinearGradient(begin: Alignment.topCenter, colors: [
//             Color.fromARGB(255, 16, 135, 151),
//             Color.fromARGB(255, 36, 174, 192),
//             Color.fromARGB(255, 37, 195, 216)
//           ]),
//         ),
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 80,
//             ),
//             Header(),
//             Expanded(
//                 child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(60),
//                     topRight: Radius.circular(60),
//                   )),
//               child: InputWrapper(),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
