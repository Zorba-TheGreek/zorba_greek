import 'dart:async';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: HomePage(),));
}

class HomePage extends StatefulWidget {
  //HomePage({Key key, this.title}) :super(key: key);

  //final String title;

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<bool> _exitPopup() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to exit an App'),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child:  Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _exitPopup,
      child: Scaffold(backgroundColor: Colors.teal,
        appBar: AppBar(backgroundColor: Colors.blueGrey,
          title: Text("Home Page"),
        ),
        body:  Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}