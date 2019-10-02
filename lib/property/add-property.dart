import 'package:flutter/material.dart';

class AddProperty extends StatefulWidget {
  @override
  _AddPropertyState createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Text(
          "Add Property",
          textDirection: TextDirection.ltr,
        ),
      ),
      body:Text("Add Property")
    );
  }
}