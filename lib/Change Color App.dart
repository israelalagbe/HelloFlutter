import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HelloApp());
}

class HelloApp extends StatefulWidget {
  @override
  _HelloAppState createState() => _HelloAppState();
}

class _HelloAppState extends State<HelloApp> {
  Color bgColor = Colors.blueGrey;
  btnPressed() {
    if (bgColor == Colors.blueGrey) {
      setState(() {
        bgColor = Colors.white;
      });
    } else {
      setState(() {
        bgColor = Colors.blueGrey;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Color Change App"),
        ),
        body: Container(
          color: bgColor,
          child: Center(
            child: CupertinoButton(
              child: Text("Change Color", textDirection: TextDirection.ltr),
              onPressed: btnPressed,
            ),
          ),
        ),
      ),
    );
  }
}
