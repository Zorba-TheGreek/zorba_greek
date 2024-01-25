import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: placeholder(),
      )));
}

class placeholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Place Holder Widget"),),
        body: Container(
          child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 2),
              itemBuilder: (context, index) {
                return Placeholder();
              }
          ),
          // child: Placeholder(
          //   color: Colors.red,
          //strokeWidth: 10.0,
          //fallbackHeight: 400.0,
          //fallbackWidth: MediaQuery.of(context).size.width,

        )
//     )
    );
  }
}