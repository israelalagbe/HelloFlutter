import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello/property/property-admin-login.dart';
import 'package:hello/property/property-item.dart';
import 'package:hello/property/property.dart';

class PropertyList extends StatefulWidget {
  @override
  _PropertyListState createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
  bool loading;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.loading = true;
    loadItems().then((value) {
      setState(() {
        loading = false;
      });
    });
  }

  Future loadItems() async {
    return await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0, //To minimize the padding between title and leading
        leading: Icon(Icons.business),
        title: Text(
          "Property Management",
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'login') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PropertyAdminLogin()),
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Admin Area"),
                  value: 'login',
                )
              ];
            },
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future.delayed(Duration(seconds: 2));
        },
        child: Center(
          child: loading
              ? CircularProgressIndicator()
              : ListView(
                  children: List.generate(40000, (index) {
                    int min = 100000;
                    int max = 1000000;
                    int selection = min + (Random().nextInt(max - min));
                    var property = new Property(
                      id: index,
                      price: selection,
                      name: "Plot $index, Lekki Lagos",
                      description:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      image: "assets/images/office.jpg",
                    );
                    return PropertyItem(
                      property: property,
                    );
                  }),
                ),
        ),
      ),
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
