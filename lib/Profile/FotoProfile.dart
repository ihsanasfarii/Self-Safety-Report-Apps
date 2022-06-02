import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:selfsafetyapp_test/Beranda/beranda.dart';
import 'package:http/http.dart' as http;
import 'package:selfsafetyapp_test/helperurl.dart';

class ayam extends StatefulWidget {
  @override
  State<ayam> createState() => _ayamState();
}

class _ayamState extends State<ayam> {
  String url = MyUrl().getUrlDevice();
  Future<List> AmbilData() async {
    final Response = await http.get("$url/flutter-ci/Ambildata.php");
    return json.decode(Response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("halo"),
      ),
      body: new FutureBuilder<List>(
        future: AmbilData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ItemList(
                  list: snapshot.data ?? [],
                )
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new Text(list[i]['email']);
        });
  }
}
