import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';


class Prodlist1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final id=ModalRoute.of(context)?.settings.arguments;
    final products=foods.firstWhere((products)=>products['id']==id);
    return Scaffold(
      appBar: AppBar(title: Text('Products'),
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: ListView(children: [
          SizedBox(height: 400,width: 400,
              child: Image.asset("${products['images']}")),
          Text('${products['name']}',
            style: TextStyle(fontSize: 30),
          ),
          Text('${products['description']}')
        ],),),
    );
  }
}