import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridcustm(),));
}

class Gridcustm extends StatelessWidget{
  var images = ["images/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg","images/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg","images/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "images/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg","images/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",];
  var name=["aaa","bbb","ccc","ddd","fff",];
  var number=["1","2","3","4","5"];
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
      childrenDelegate: SliverChildBuilderDelegate((context,index){
        return Card(
     child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
    trailing: Icon(Icons.shopping_cart),
    title: Text(name[index]),
    subtitle: Text(number[index]),
        ),
        );
    },childCount: images.length,
)),
);
  }

}