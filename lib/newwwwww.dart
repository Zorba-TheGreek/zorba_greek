import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Drawereg(),
          )));
}

class Drawereg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),backgroundColor: Colors.indigo[900],),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_1280.jpg"),fit: BoxFit.fill,)),
              accountName: Text("AKASH R KUNNATH",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              accountEmail: ListView(children:[
                Text("@akaaasshhh",style: TextStyle(color: Colors.white54),),
                Row(children: [
                  Text("164 followers",style: TextStyle(color: Colors.white54),),
                  Text("125 following",style: TextStyle(color: Colors.white54),),
                ],)
              ],),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg"),),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("MESSAGE"),
            ),
            ListTile(
              leading: Icon(Icons.sync),
              title: Text("SYNC"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("TRASH"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
            ),
            Divider(thickness: 1,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(child: Text("Profile",style: TextStyle(color: Colors.grey),),),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("LOGOUT"),
            ),
            Divider(thickness: 1,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(child: Text("Contact us",style: TextStyle(color: Colors.grey),),),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("SHARE"),
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text("RATE US"),
            ),

          ],
        ),)
      ,
    );
  }

}