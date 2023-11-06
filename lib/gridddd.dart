import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Assignmentt(),
    ),
  ));
}

class Assignmentt extends StatelessWidget{
  var name=["home","email",'alarm','wallet',"backup","book","camera",'person',"print","phone",'notes',"music"];
   var colour=[Colors.indigo,Colors.deepPurple,Colors.red,Colors.lightBlue,Colors.amber,Colors.blueGrey,Colors.indigo,Colors.deepOrangeAccent,Colors.cyan,Colors.redAccent,Colors.black54,Colors.deepOrange];
   var icoon=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera,Icons.person,Icons.print,Icons.phone,Icons.notes,Icons.music_note];
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     backgroundColor: Colors.deepPurpleAccent,
       title: Text('gridview',style: GoogleFonts.sacramento(fontSize: 28),),
   ),
   body: GridView.count(crossAxisCount: 3,
     children: List.generate(12, (index){
       return Card(
         color: colour[index],
         child: Column(
           children: [
             SizedBox(height: 30,),
             Icon(icoon[index],size: 50,),
             SizedBox(height: 20,),
             Text(name[index]),

           ],
         ),
         );
     },
   )));

  }

}