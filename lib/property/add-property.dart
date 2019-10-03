import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello/property/property-service.dart';

class MySingleScroll extends StatelessWidget {
  final Widget child;
  const MySingleScroll({this.child});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        //Contrained box is used here cos of the single child scrollview
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: child,
          ),
        );
      },
    );
  }
}

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
            "Add land info",
            textDirection: TextDirection.ltr,
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: MySingleScroll(
            child: Container(
              padding: EdgeInsets.all(10),
              //height: double.infinity,
              color: Colors.transparent,
              child: Column(
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.red,
                    child: Container(
                      height: 200,
                      width: 300,
                      color: Colors.grey.withAlpha(70),
                      child: Center(
                        child: Text(
                          "Tap to Upload Image",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                    onTap: () async {
                      File file =
                          await FilePicker.getFile(type: FileType.IMAGE);

                      var propertyService = new PropertyService();
                      propertyService.uploadFile(file);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.title),
                      labelText: "Land Title",
                      border: OutlineInputBorder(),
                    ),
                    //controller: usernameCtl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.monetization_on),
                      labelText: 'Price (#)',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly
                    ],
                    //controller: usernameCtl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText:
                          "Full Description of the Land. e.g Address, Seller, e.t.c",
                    ),
                    maxLines: 10,
                    //controller: usernameCtl,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: RaisedButton(
                      color: Colors.red,
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
