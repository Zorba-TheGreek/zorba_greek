import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Tweeeenn(),
          )));
}

class Tweeeenn extends StatefulWidget {
  const Tweeeenn({super.key});

  @override
  State<Tweeeenn> createState() => TweeeennState();
}
class TweeeennState extends State<Tweeeenn>
    with SingleTickerProviderStateMixin {
  double animationEnd = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: SafeArea(
        child: Center(
          child: TweenAnimationBuilder(
            duration: Duration(seconds: 5),
            builder: (context, value, child) {
              return Container(
                child: Image.asset(
                  "images/apple logo.png",
                  height: value,
                  width: value,
                ),
              );
            },
            tween: Tween<double>(begin: 50.0, end: 500.0),
          ),
        ),
      ),
    );
  }
}
