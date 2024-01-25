import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=> MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: Alertt(),),
  ));
}


class Alertt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed:(){
      showDialog(context: context, builder:
          (context) {
        return AlertDialog(
          title: Text('exit'),
          content: Text('do you want to exit?'),
          actions: [
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text('yes')),
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text('no')),
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text('cancel'))
          ],
        );
      });
    },child: Text('show alert'),),
    ),
    );
}
}
