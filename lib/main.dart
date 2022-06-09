import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Beranda/beranda.dart';
import 'package:selfsafetyapp_test/Message/pesan.dart';
import 'Popup/popupmessage.dart';
import 'Register/registrasi.dart';
import 'Login/LoginPage.dart';
import 'splashscreen.dart';
import 'Beranda/beranda.dart';
import 'Profile/ProfilePage.dart';
import 'Message/pesan.dart';
import 'package:flutter_responsive/flutter_responsive.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'db.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

late AndroidNotificationChannel channel;
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  if (!kIsWeb) {
    channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title

      importance: Importance.high,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const splashscreen(),
        '/LoginPage': (context) => LoginPage(),
        '/register': (context) => registrasi(),
        '/beranda': (context) => beranda(),
        '/ProfilePage': (context) => ProfilePage(),
        '/pesan': (context) => pesan(),
        '/popupmessage': (context) => popupmessage(),
      },
    );
  }
}

// Crude counter to make messages unique
int _messageCount = 0;

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);
  @override
  State<Application> createState() => _Application();
}

class _Application extends State<Application> {
  String? _token;
  //List<Map<String, dynamic>> users = [];

  // void refreshList() async {
  //   final data = await UserDatabase.getDataUser();
  //   setState(() {
  //     users = data;
  //   });
  // }

  void initState() {
    super.initState();

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        Navigator.pushNamed(
          context,
          '/message',
          arguments: MessageArguments(message, true),
        );
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null && !kIsWeb) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              icon: 'launch_background',
            ),
          ),
        );
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      Navigator.pushNamed(context, '/message',
          arguments: MessageArguments(message, true));
    });
  }

  @override
  Widget build(BuildContext context) {
    // final children = <Widget>[];
    // for (var i = 0; i < users.length; i++) {
    //   children.add(GestureDetector(
    //     onTap: () {},
    //     onLongPress: () {},
    //     child: Container(
    //       width: double.infinity,
    //       decoration: BoxDecoration(
    //           border: Border(
    //               bottom: BorderSide(
    //                   width: 0.5, color: Color.fromARGB(255, 153, 153, 153)))),
    //       child: new ListTile(
    //         title: Text(users[i]['nama']),
    //         subtitle: Text(users[i]['nim']),
    //       ),
    //     ),
    //   ));
    // }
    return Scaffold(
        body: Container(
            height: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.735,
                  child: ListView(
                    children: [Container(margin: const EdgeInsets.all(10))],
                  ),
                )
              ],
            )));
  }
}

class MessageArguments {
  MessageArguments(RemoteMessage message, bool bool);
}
