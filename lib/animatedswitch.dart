import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSwitcherExample(),
    );
  }
}

class AnimatedSwitcherExample extends StatefulWidget {
  @override
  _AnimatedSwitcherExampleState createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool txt = true; // Track which widget to display

  void btn() {
    setState(() {
      txt = !txt; // Toggle between two widgets
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSwitcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
                duration: Duration(seconds: 2), // Animation duration

                // transitionBuilder: (Widget child,
                // Animation<double>animation)=>
                // ScaleTransition(child: child,scale: animation,),

                child: txt ? Container(
                  key: ValueKey<int>(1), // Unique key
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                )

                //     : Container(
                //   key: ValueKey<int>(2), // Unique key
                //   width: 200,
                //   height: 200,
                //   color: Colors.green,
                // ),
                    :Image(image: AssetImage("images/WhatsApp Image 2023-09-30 at 13.20.43.jpg"),height: 300,width: 300,)
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: btn,
                child: Text('Toggle Widgets'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}