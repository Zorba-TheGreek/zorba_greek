import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home page.dart';

void main() {
  runApp(DevicePreview(
      builder:(BuildContext context)=>MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
    home: Login(),
  )));
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => Loginstate();
}

class Loginstate extends State<Login> {
  GlobalKey <FormState> formkey=GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Dialler",
          style: GoogleFonts.bilboSwashCaps(fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
            child: Center(
          child: Form(
            key: formkey,
            child: Column(children: [
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
                padding: const EdgeInsets.only(top: 50,bottom: 30,left: 25, right: 25),
                child: TextFormField(
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
                    obscuringCharacter: "*",
                    obscureText: showpass,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                var showpass = false;
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
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  } else {
                    return null;
                  }
                },
                child: Text("Login"),
              ),
              TextButton(
                  onPressed: () {},
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
