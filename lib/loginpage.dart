import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zorba_greek/splashscreen.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: App(),
    ),
  ));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => LoginpageState();
}

class LoginpageState extends State<Loginpage> {
  bool showpass=true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Instagram",style: GoogleFonts.bilboSwashCaps(fontSize: 28),),
        ),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-vector/doodle-travel-background_23-2148044879.jpg?t=st=1694787775~exp=1694791375~hmac=32d2bce4e4d17abb3b9830a76b45e7db3d6efe0c336ae785a221b07e41966b5f"),fit: BoxFit.fill
    )),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image(
                  image: AssetImage("images/instagram.png"),
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextField(
                    cursorColor: Colors.indigo,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                         hintText: " Usename or Email",
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
                        hintText: " Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {},
                    child: Text("LOGIN")),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("Create an account",
                        style: GoogleFonts.abel(fontSize: 20,
                            color: Colors.black,
                          fontWeight: FontWeight.w900,
                          textStyle: Theme.of(context).textTheme.titleMedium
                        ),)),
              ],
            ),
          ),
        ));
  }
}