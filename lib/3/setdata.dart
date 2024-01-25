import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zorba_greek/3/data.dart';

class Prodmain_ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('products')),
      body: ListView(children:
      foods.map((product)=>TextButton(onPressed: ()=>gotoNext(context,product['id']), child: Text('${product['name']}',
        style: TextStyle(fontSize: 20),)))
          .toList()),
    );
  }
  void gotoNext(BuildContext context,products){
    Navigator.of(context).pushNamed('secondpage_',arguments: products);
  }
}