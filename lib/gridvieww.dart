import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(home: Gridvieww(),));
}

class Gridvieww extends StatelessWidget{
  var images = ["images/WhatsApp Image 2023-09-30 at 13.20.43.jpg","images/WhatsApp Image 2023-09-30 at 13.20.43.jpg","images/WhatsApp Image 2023-09-30 at 13.20.43.jpg,"
      "images/WhatsApp Image 2023-09-30 at 13.20.43.jpg","images/WhatsApp Image 2023-09-30 at 13.20.43.jpg",];
  var name=["aaa","bbb","ccc","ddd","fff",];
  var number=["1","2","3","4","5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, mainAxisSpacing: 20, crossAxisSpacing: 20),
        children: List.generate(10, (index) {
          return Card(
            child: Column(
              children: [
                Image(image: AssetImage(images[index]),),
                Row(
                  children: [
                    Text(name[index]),
                    SizedBox(width: 100,),
                    Text(number[index])
                  ],
                ),
              ],
            ),
          );
        }
        ),
      ),
    );
  }

}