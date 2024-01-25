import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zorba_greek/1/log.dart';

class Homep extends StatefulWidget{
  @override
  State<Homep> createState() => _HomepState();
}

class _HomepState extends State<Homep> {
  late SharedPreferences logindata;
  late String name;

  @override
  void initState(){
    initial();
  }
  void initial() async{
    logindata=await SharedPreferences.getInstance();
    setState(() {
      name=logindata.getString('name')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('homepage'),),
      body:    Center(
        child: ElevatedButton(
          onPressed: () {
            logindata.setBool('newuser', true);
            Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=> Loginp()));
          },
          child: Text("LogOut"),
        ),
      ),
    );
  }
}