import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            home: Homepage(),
          )));
}
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => Homestate();
}
  class Homestate extends State<Homepage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('recents')),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("images/WhatsApp Image 2023-09-30 at 13.20.43.jpg"),),
              title: Text("Vichaa"),
              subtitle: Text('6238388721'),
              trailing: Icon(Icons.call),
            ),
            Card(
              color: Colors.indigo,
              child: ListTile(
                leading: Icon(Icons.person_2_rounded),
                title: Text('vichu2'),
                subtitle: Text('8111914047'),
                trailing: Icon(Icons.call),
              ),
            ),
            // ListTile(
            //   leading:
            // )
          ],
        ),
      );
    }
  }
