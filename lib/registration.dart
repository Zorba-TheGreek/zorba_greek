
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Register(),
        ),
  ));
}
class Register extends StatefulWidget {
  @override
  State<Register> createState() => Registerstate();
}
class Registerstate extends State<Register> {
  bool showpass=true;


    @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("instagram",style: GoogleFonts.bilbo(fontSize: 28),),
        ),
        body: Container(decoration: BoxDecoration(color: Colors.white
        ),
          child: Column(children: [
         SizedBox(
           height: 40,
         ),
            Padding(
                padding: const EdgeInsets.only(left: 50,right: 50,top: 50),
            child: TextField(
              cursorColor: Colors.indigo,
              decoration: InputDecoration(
               prefixIcon: Icon(Icons.person_2_rounded),
                hintText: "Email address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30))),
                )
              ),
      Padding(
      padding: const EdgeInsets.only(left: 50,right: 50,top: 30),
      child: TextField(
      cursorColor: Colors.indigo,
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.person_2_rounded),
      hintText: "Mobile Number",
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30))),

      )
      ),
      Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
      child: TextField(
      obscureText: showpass,
      obscuringCharacter: "*",
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.password),
      suffixIcon: IconButton(onPressed: (){
      setState(() {
      if(showpass){
      showpass=false;
      }
      else{
      showpass=true;
      }
      });
      }, icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),
      hintText: "Create Password",
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30))),
      ),
      ),
      Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
      child: TextField(
      obscureText: showpass,
      obscuringCharacter: "*",
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.password),
      suffixIcon: IconButton(onPressed: (){
      setState(() {
      if(showpass){
      showpass=false;
      }
      else{
      showpass=true;
      }
      });
      }, icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),
      hintText: "Confirm Password",
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30))),
      ),
      ),
      SizedBox(
      height: 40,
      ),
          ElevatedButton(
          style:
          ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
          onPressed: (){},
          child: Text('CREATE ACCOUNT'),
      )
      ]),
      )
            );

  }
}

