
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zorba_greek/1/log.dart';

import 'hom.dart';


class Registere extends StatefulWidget {
  GlobalKey <FormState> formkey=GlobalKey();
  @override
  State<Registere> createState() => Registerstate();
}
class Registerstate extends State<Registere> {
  final name_controller=TextEditingController();
  final username_controller=TextEditingController();
  final password_controller=TextEditingController();
  late SharedPreferences logindata;
  bool showpass=true;
@override
void dispose(){
  name_controller.dispose();
  username_controller.dispose();
  password_controller.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("New user",style: GoogleFonts.bilbo(fontSize: 28),),
        ),
        body:
        Container(decoration: BoxDecoration(color: Colors.white
        ),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 50,right: 50,top: 50),
                child: TextField(
                  controller: name_controller,
                  cursorColor: Colors.indigo,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_2_rounded),
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(left: 50,right: 50,top: 30),
                child: TextField(
                  controller: username_controller,
                  cursorColor: Colors.indigo,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_2_rounded),
                      hintText: "Email Adress",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),

                )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 30),

              child: TextField(
                controller: password_controller,
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
            ElevatedButton(
              onPressed: (){
                registerr();
              },
              child: Text('CREATE ACCOUNT'),
            )
          ]),
        )
    );
  }
  void registerr() async{
  logindata=await SharedPreferences.getInstance();
  String name= name_controller.text;
  String username= username_controller.text;
  String password= password_controller.text;

  if(username!=''&& password!=''){
    logindata.setString('name', name);
    logindata.setString('username', username);
    logindata.setString('password', password);

    Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginp()));
  }
  }
}

