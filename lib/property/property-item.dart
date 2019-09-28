import 'package:flutter/material.dart';
import 'package:hello/property/property-details.dart';
import 'package:hello/property/property.dart';

class PropertyItem extends StatelessWidget {
  final Property property;
  const PropertyItem({
    Key key,
    this.property,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.redAccent.withAlpha(70),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PropertyDetails(
                      property: this.property
                    )),
          );
        },
        child: Container(
          margin: EdgeInsets.all(3),
          padding: EdgeInsets.only(left: 5, top: 5, right: 5),
          height: 100,
          child: Row(
            children: <Widget>[
              Hero(
                tag: this.property.id,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/office.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: null,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Land at Lekki",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withAlpha(150)
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "\$240,000",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                           color: Colors.black.withAlpha(100),),
                    ),
                    // Text(
                    //   "Category: Property",
                    //   textDirection: TextDirection.ltr,
                    //   style: TextStyle(
                    //       fontStyle: FontStyle.italic, color: Colors.black38),
                    // )
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