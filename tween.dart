import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: tweeenn(),
      )));
}
class tweeenn extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(child: Text("hello world",style: TextStyle(fontSize: 34,color: Colors.black),),
      tween: Tween<double>(begin: 0,end: 1),
      duration: Duration(milliseconds: 500)
      builder: (context value child){
      return Container(child: Image(image:),)
    }

    );
  }

}
