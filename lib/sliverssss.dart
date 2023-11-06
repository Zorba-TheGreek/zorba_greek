import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext contex) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Sliversss(),
          )));
}
class Sliversss extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("FlipKart"),
            actions: [
              IconButton(onPressed: (){

              },icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){},icon:Icon(Icons.favorite))
            ],
            bottom: AppBar(
              title: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(hintText: "Search something"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}