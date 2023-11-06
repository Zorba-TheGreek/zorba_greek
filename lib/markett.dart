import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: carousel(),debugShowCheckedModeBanner: false,));
}
class carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            expandedHeight: 200,
            title: Text("FARMERS FRESH ZONE",style: TextStyle(color:Colors.white),),
            actions: [IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined)),Padding(
              padding: const EdgeInsets.only(top: 19),
              child: Text("Kochi"),
            ),
            ],bottom: AppBar(
            backgroundColor: Colors.green,
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(color:Colors.white),
              child: TextField(decoration: InputDecoration(hintText: "Search for vegitables and  loaction",border: InputBorder.none
                  ,prefixIcon: Icon(Icons.search)),
              ),

            ),

          ),),SliverList(delegate: SliverChildListDelegate([Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent),
                borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            
          )]))
        ],
      ),
    );
  }

}