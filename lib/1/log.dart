import 'dart:core';
import 'dart:math';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zorba_greek/1/reg.dart';

import '../home page.dart';
import 'hom.dart';


void main() {
  runApp(DevicePreview(
      builder:(BuildContext context)=>MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Loginp(),
      )));
}

class Loginp extends StatefulWidget {
  @override
  State<Loginp> createState() => Loginstate_();
}

class Loginstate_ extends State<Loginp> {
 final username_controller=TextEditingController();
 final password_controller=TextEditingController();
 late SharedPreferences logindata;
 late bool newuser;
 late String pwd;
 late String uname;
 late String name;
  bool showpass = true;

  @override
  void initState(){
    check_if_already_login();
    getvalue();
  }

  void getvalue() async{
    logindata=await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
      uname= logindata.getString('username')!;
      pwd=logindata.getString('password')!;
    });
  }
  void check_if_already_login() async{
    logindata=await SharedPreferences.getInstance();
    newuser=(logindata.getBool('newuser')?? true);
    if(newuser==false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homep()));
    }
  }
  @override
  void dispose(){
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Login page",
          style: GoogleFonts.bilboSwashCaps(fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
            child: Center(
              child: Form(
                child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50,bottom: 30,left: 25, right: 25),
                    child: TextFormField(
                      controller: username_controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "username",
                        hintText: "username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      validator: (uname) {
                        if (uname!.isEmpty ||
                            !uname.contains('@') ||
                            !uname.contains('.')) {
                          return "please enter valid username";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25,bottom: 30),
                    child: TextFormField(
                      controller: password_controller,
                        obscuringCharacter: "*",
                        obscureText: showpass,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (showpass) {
                                    showpass=false;
                                  } else {
                                    showpass = true;
                                  }
                                });
                              },
                              icon: Icon(showpass == true
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            labelText: "password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        validator: (password) {
                          if (password!.isEmpty|| password.length<8) {
                            return "enter a valid password";
                          } else {}
                        }),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String username=username_controller.text;
                      String password=password_controller.text;
                      if (username!=''&& password!=''&&username==uname&&password==pwd){
                        print('Successful');
                        logindata.setBool('newuser', false);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homep()));
                      }
                    },
                    child: const Text("Login"),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Registere()));
                      },
                      child: Text(
                        "Create an account",
                        style: GoogleFonts.abel(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            textStyle: Theme.of(context).textTheme.titleMedium),
                      )),
                ]),
              ),
            )),
      ),
    );
  }
}
