import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
      builder: (BuildContext context)=>MaterialApp(
      useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: newuii(),
  ),
  ));
}
class newuii extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

}