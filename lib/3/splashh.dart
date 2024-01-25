import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zorba_greek/3/list.dart';
import 'package:zorba_greek/3/setdata.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: foodsplsh(),
      routes: {'secondpage_': (context) => Prodlist1(),
      },
  )));
}
class foodsplsh extends StatefulWidget{
  @override
  State<foodsplsh> createState() => _foodsplshState();
}

class _foodsplshState extends State<foodsplsh> {
  @override
  void initState(){
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Prodmain_()));
    });
  }
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: Colors.white,
      child: Padding(
          padding: const EdgeInsets.only(top: 120,left: 50,right: 50),
      child: Center(
        child: Column(
          children: [
            Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/1/12/Swiggy_logo.svg/2560px-Swiggy_logo.svg.png'),),
          ],
        ),
      ),),
    ),
  );
  }
}