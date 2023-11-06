
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: drawwer(),
    ),
  ));
}
class drawwer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title: Text('MY APP'),),
    drawer: Drawer(
    child: ListView(
    children: [
      UserAccountsDrawerHeader(
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/rm422-076.jpg"),fit: BoxFit.fill)),
    accountName: Text('ZORBA GREEK',),
    accountEmail: Text('@akashh'),
    currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("images/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg"),),
    ),
      ListTile(
        leading: Icon(Icons.home_filled),
        title: Text('home'),
      ),
      ListTile(
        leading: Icon(Icons.design_services),
        title: Text('Services'),
      ),
      ListTile(
      leading: Icon(Icons.account_box),
      title: Text('About'),
      ),
      Divider(thickness:1,color: Colors.blue,),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('LOGOUT'),
      ),
    ],
    ),
    ),
 );
  }

}