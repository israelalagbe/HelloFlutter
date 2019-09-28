import 'package:flutter/material.dart';

class PropertyDetails extends StatelessWidget {
  final dynamic property;
  final int hero;
  const PropertyDetails({Key key, this.property, this.hero}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Text(
          property,
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Card(
          elevation: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: this.hero,
                child: Container(
                  child: Image.asset(
                    "assets/images/office.jpg",
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Land at Lekki",
                      textDirection: TextDirection.ltr,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Price: \$24",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black87,fontSize: 18),
                    ),
                    Text(
                      "Category: Property",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black38),
                    ),
                    Divider(),
                    Text(
                      "",
                      textDirection: TextDirection.ltr,
                      style: TextStyle( color: Colors.black87),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
