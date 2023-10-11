import 'dart:async';
import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zorba_greek/loginpage.dart';

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
  void initState(){
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    });
    super.initState();
  }
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
                "Instagram",
                style: GoogleFonts.bilboSwashCaps(
                  fontSize: 30,
                  color: Colors.black,
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
