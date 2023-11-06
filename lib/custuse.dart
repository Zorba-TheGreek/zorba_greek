import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custttomm.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: custmmmm(),
    ),
  ));
}
class custmmmm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text('vfs'),
   ),
   body: Container(
     child: custtt(
         onpress: (){
    },
       img: Image(image: AssetImage("images/WhatsApp Image 2023-10-19 at 23.11.40_0f6decf7.jpg"),),
       text: Text("Akashh"),
       bgcolour: Colors.indigo,
     ),
   ),
 );
  }

}