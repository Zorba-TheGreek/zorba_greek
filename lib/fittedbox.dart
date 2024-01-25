import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Sample FittedBox"),),
      body: ListView(
          children:<Widget>[
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.center,
              child: Container(
                child: Row(
                    children:<Widget>[
                      Container(
                        width: 250.0,
                        height: 250.0,
                        child: Image.network("https://tse1.mm.bing.net/th?id=OIP.wwxK07x0Umfnh0l-nrjxjgHaDg&pid=Api&P=0&h=180"),
                      ),Container(child: Text('Sample text'),)]
                ),
              ),
            )
          ]
      ),
    ),
  ) );
}