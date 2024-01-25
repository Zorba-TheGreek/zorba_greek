import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: Homepage(),));
  // runApp(DevicePreview(
  //   builder: (BuildContext context) => MaterialApp(
  //     useInheritedMediaQuery: true,
  //     home: Homepage(),
  //     debugShowCheckedModeBanner: false,
  //   ),
  // ));
}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //var _mediaQuery = MediaQuery.of(context); //function create


    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width *0.5,
            decoration: BoxDecoration(color: Colors.yellow),
          ),
          Container(
            width: 100,
            decoration: BoxDecoration(color: Colors.red),
          )
        ],
      ),
    );
  }
// return Scaffold(
//   body: Builder(builder: (context){
//     if(MediaQuery.of(context).orientation==Orientation.portrait){
//       return portraitWidget(_mediaQuery.size);
//     }
//     else{
//       return landscapeWidget(_mediaQuery.size);
//     }
//   }
//   ),
// );

}
//
//   Widget portraitWidget(Size size) {
//     return Center(
//       child: Container(
//         width: size.width* 0.8,
//         height: size.height *0.8,
//         decoration:const BoxDecoration(
//           color: Colors.purple
//         ),
//         child: Center(child: Text("Portrait",style: TextStyle(fontSize: 40),)),
//
//       ),
//     );
//   }
//   }
//   Widget landscapeWidget(Size size) {
//     return Center(
//       child: Container(
//         width: size.width* 0.8,
//         height: size.height *0.8,
//           decoration:const BoxDecoration(
//               color: Colors.yellow
//           ),
//         child: Center(child: Text("Portrait",style: TextStyle(fontSize: 40),)),
//
//       ),
//     );
//