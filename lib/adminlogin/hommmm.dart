import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final data;
  const Home({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name  = data[0]['name'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: Center(

        child: Text('Welcome to ooty nice to meet you'),
      ),
    );
  }
}