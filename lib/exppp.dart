import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Expandeg(),
      )));
}

class Expandeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        children: [
          Container(color: Colors.red,height: 100,),
          Expanded(child: Container(color: Colors.yellow,)),
          Expanded(child: Container(color: Colors.blue,)),
          Expanded(child: Container(color: Colors.brown,)),
        ],
      ),
    );
  }

}