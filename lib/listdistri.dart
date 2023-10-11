import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listt(),));
}
class Listt extends StatelessWidget{
  var name=['vichu','funda','vichufunda'];
  var phone=['222','333','444'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder:(context,index){
    return Card(
      child: ListTile(
        leading: Icon(Icons.person_2_rounded),
        title: Text(name[index]),
        subtitle: Text(phone[index]),
        trailing: Icon(Icons.call),
      ),
    );
  },itemCount: name.length,
  ),);
}
}