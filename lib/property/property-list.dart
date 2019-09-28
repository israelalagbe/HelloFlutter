import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello/property/property-item.dart';
import 'package:hello/property/property.dart';

class PropertyList extends StatefulWidget {
  @override
  _PropertyListState createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0, //To minimize the padding between title and leading
        leading: Icon(Icons.home),
        title: Text(
          "Property Management",
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Center(
        child: loading
            ? CircularProgressIndicator()
            : ListView(
                children: List.generate(40000, (index) {
                  int min = 100000;
                  int max = 1000000;
                  int selection = min + (Random(1).nextInt(max - min));
                  var property = new Property(
                    id: index,
                    price: selection,
                    name: "Plot $index, Lekki Lagos",
                    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    image: ""
                  );
                  return PropertyItem(
                    property: property,
                  );
                }),
              ),
      ),
    );
  }
}
