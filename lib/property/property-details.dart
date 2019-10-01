import 'package:flutter/material.dart';
import 'package:hello/property/property.dart';
import 'package:intl/intl.dart' as intl;
final formatCurrency = new intl.NumberFormat.currency(symbol: "\u20A6");
class PropertyDetails extends StatelessWidget {
  final Property property;
  const PropertyDetails({Key key, this.property}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Text(
          property.name,
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
                tag: this.property.id,
                child: Container(
                  child: Image.asset(
                    this.property.image,
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
                      this.property.name,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withAlpha(150)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "${formatCurrency.format(property.price)}",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black.withAlpha(100),
                          fontSize: 18),
                    ),
                    // Text(
                    //   "Category: Property",
                    //   textDirection: TextDirection.ltr,
                    //   style: TextStyle(
                    //       fontStyle: FontStyle.italic, color: Colors.black38),
                    // ),
                    Divider(),
                    Text(
                      this.property.description,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.black87),
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
