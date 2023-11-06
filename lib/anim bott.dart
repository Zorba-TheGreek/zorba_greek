import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: resort(),
          )));
}

class resort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            expandedHeight: 150,
            backgroundColor: Colors.teal,
            floating: true,
            pinned: true,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(top: 30, bottom: 5),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Type Your Location",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [Icon(Icons.favorite_border)],
            leading: Container(
              child: Icon(Icons.menu),
            ),
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.teal,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(150)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Kakkanad ,Kochi",
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 100,
                width: 200,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Positioned(
                      right: 30,
                      top: 40,
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.local_cafe),
                            Center(child: Text("Cafe")),
                          ],
                        ),
                        color: Colors.red,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Positioned(
                        left: 145,
                        top: 40,
                        child: Container(
                          child: Column(
                            children: [
                              Icon(Icons.restaurant),
                              Center(child: Text("Restaurant")),
                            ],
                          ),
                          color: Colors.cyan,
                          height: 100,
                          width: 100,
                        )),
                    Positioned(
                      left: 30,
                      top: 40,
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.hotel),
                            Center(child: Text("hotel")),
                          ],
                        ),
                        color: Colors.amberAccent,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage(
                              "https://assets.simpleviewinc.com/simpleview/image/up"
                                  "load/c_limit,h_1200,q_75,w_1200/v1/"
                                  "clients/milwaukee/VM_Hilton_Plaza_Suite_King_Room_9b5d673a"
                                  "-95c6-445e-ad6b-5ae85e260f18.jpg"),
                        ),
                      ),
                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Awesome room near Kakkanad",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(250 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/517992284/photo/modern-b"
                                  "edroom-style-interior.jpg?s=612x612&w=0&k=20&c=ErlC7ZOcKWZ1VRdmVWfiNpzsWZ30-KNzPsQFMCcuwgQ="),
                        ),
                      ),
                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Beautifull Room",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(230 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/991205262/photo/"
                                  "feminine-bedroom-interior-with-a-double-bed-with-dotted-sheets-armchair-art-coll"
                                  "ection-and.jpg?s=612x612&w=0&k=20&c=Wd0P4B4HQCN6nd1zzFYS6_Cx_ZA0aeV-UIqOtj0jxJ8="),
                        ),
                      ),

                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Peacefull Room",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(200 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]), Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage("https://media.istockphoto.com/id/627183120/photo/c"
                              "lassic-minimal-bedroom-with-walk-in-closet."
                              "?s=612x612&w=0&k=20&c=0kpv_Cx4JS4DjpHDtXWXEHsN4_r4OBnb2dQX3ini6zM="),
                        ),
                      ),
                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Vintage room",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(230 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRutTYCfucvPNIWt8gYF1CUDhMwFAV9GMpWsw&usqp=CAU"),
                        ),
                      ),

                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Aesthetic Room",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(200 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]),
                    ]
                    )

                ),
              )
            ]
            ),

          )

        ]
        )
        );
  }
}