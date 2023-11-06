import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            home:Lottiee(),
          )));
}
class Lottiee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Lottie.asset("animations/Animation - 1697786621547.json"),
        Lottie.network("https://lottie.host/05323c3b-ebc5-4032-ae3e-68a7749bae88/REE4reWjvv.json"),
        ],),
    );
  }

}