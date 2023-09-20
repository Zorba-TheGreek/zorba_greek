import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: App(),
          )));
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Appstate();
}

class Appstate extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.only(top: 120, left: 50, right: 50),
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage("images/instagram.png"),
                height: 100,
                width: 100,
              ),
              Text(
                "welcome to flutter",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red[900],
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
