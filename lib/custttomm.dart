import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custtt extends StatelessWidget{
  final Text?text;
  final Color?bgcolour;
  final Image?img;
  VoidCallback?onpress;

  custtt({this.text,this.bgcolour,this.img,required this.onpress});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: Card(
     color: bgcolour,
     child: ListTile(
       leading: img,
         title: text,
       onTap: onpress,
     ),
   ),
 );
  }


}