import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zorba_greek/2/prodlistt.dart';

import 'dummydata.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: Prodmain(),
    routes: {
      'secondpage':(context)=>Prodlist(),
    },
  )));
}

class Prodmain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('products')),
   body: ListView(children:
     dummyproducts.map((product)=>TextButton(onPressed: ()=>gotoNext(context,product['id']), child: Text('${product['name']}',
    style: TextStyle(fontSize: 20),)))
    .toList()),
   );
  }
  void gotoNext(BuildContext context,products){
    Navigator.of(context).pushNamed('secondpage',arguments: products);
  }
}