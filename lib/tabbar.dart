import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Tabbb(),
    ),
  ));
}

class Tabbb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text('WhatsApp'),
    backgroundColor: Colors.deepOrange,
    actions: [
      Padding(padding: const EdgeInsets.only(right: 5),child: Icon(Icons.search),),
      Padding(padding: const EdgeInsets.only(right: 5),child: Icon(Icons.camera_alt),),
      PopupMenuButton(itemBuilder: (context){
        return [
          PopupMenuItem(child: Text('settings')),
    PopupMenuItem(child: Text('help')),
    PopupMenuItem(child: Text('invite')),
        ];
    }
      )],
    bottom: TabBar(tabs: [
      Tab(child: Icon(Icons.people_alt),),
    Tab(child: Text('chat'),),
    Tab(child: Text('status'),),
    Tab(child: Text('call'),),
    ],
  ),
),
);
  }


}