import 'package:flutter/material.dart';

class PropertyAdminLogin extends StatefulWidget {
  @override
  _PropertyAdminLoginState createState() => _PropertyAdminLoginState();
}

class _PropertyAdminLoginState extends State<PropertyAdminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Text(
          "Admin Area",
          textDirection: TextDirection.ltr,
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person_outline),
                          hintText: "Username",
                          hasFloatingPlaceholder: true),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.red,
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )
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
