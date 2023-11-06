import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: slivereg(),)));
}
class slivereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,pinned: true,
              expandedHeight: 150,
              //  flexibleSpace:Container(color: Colors.black,),
              title: Text("Conversations",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
              actions: [TextButton(onPressed: (){}, child: Text("+ Add new", style: TextStyle(color: Colors.red),),
              ),
              ],bottom: AppBar(backgroundColor: Colors.white,
              elevation: 0,
              title: Container(decoration: BoxDecoration(color: Colors.white),
                child: TextField(decoration:InputDecoration(hintText:"Search..."),),
              ),
            ),
            ),
            SliverList(delegate: SliverChildListDelegate([
              ListTile(leading:Image(image: AssetImage("images/apple logo.png"),),
                title: Text("Vichuuuu"),
                subtitle: Text("valla panikk poikkoode??"),
                trailing:Text("Today"),),
              ListTile(leading:Image(image: AssetImage("images/apple logo.png"),) ,
                title: Text("Kannan"),
                subtitle: Text("ok "),
                trailing: Text("yesterday"),),
              ListTile(leading: Image(image: AssetImage("images/apple logo.png"),),
                title: Text("Vyshhnavv"),
                subtitle: Text("nice"),
                trailing: Text("oct20"),),
              ListTile(leading: Image(image: AssetImage("images/apple logo.png"),),
                title: Text("Naadhu"),
                subtitle: Text("bye"),
                trailing: Text("oct18"),),
              ListTile(leading: Image(image: AssetImage("images/apple logo.png"),),
                title: Text("anaghaa"),
                subtitle: Text("I'll call you later"),
                trailing: Text("oct18"),),
              ListTile(leading: Image(image: AssetImage("images/apple logo.png"),),
                title: Text("akshay"),
                subtitle: Text("see you soon"),
                trailing: Text("oct 17"),),
              ListTile(leading:Image(image: AssetImage("images/apple logo.png"),),
                title:Text("Jeeena"),
                subtitle: Text("good morning"),
                trailing: Text("last week"),),
              ListTile(leading:Image(image: AssetImage("images/apple logo.png"),),
                title: Text("ponnu"),
                subtitle: Text("hello"),
              trailing: Text('last week'),),
            ]
            )
            ),
          ],
        ),
        bottomNavigationBar:BottomNavigationBar(selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.update),label: "Status"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile")
          ],)
    );
  }
}