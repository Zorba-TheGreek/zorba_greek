import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: SliverListExample(),
    );
  }
}

class SliverListExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView with SliverChildListDelegate")),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage("images/imoji.png")),
                  title: Text("abc"),
                  subtitle: Text("123"),
                  trailing: Icon(Icons.contact_page_rounded),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}