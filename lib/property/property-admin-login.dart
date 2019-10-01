import 'package:flutter/material.dart';

class PropertyAdminLogin extends StatefulWidget {
  @override
  _PropertyAdminLoginState createState() => _PropertyAdminLoginState();
}

class _PropertyAdminLoginState extends State<PropertyAdminLogin> {
  final usernameCtl = TextEditingController();
  final passwordCtl = TextEditingController();
  _login() {
    print(usernameCtl.value.text);
    print(passwordCtl.value.text);
  }
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
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          //Contrained box is used here cos of the single child scrollview
          return SingleChildScrollView(
              child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 300,
                    child: Center(
                      child: Text(
                        "LOGO",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_outline),
                            labelText: "Username",
                          ),
                          controller: usernameCtl,

                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: "Password",
                          ),
                          controller: passwordCtl,
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 300,
                          child: RaisedButton(
                            color: Colors.red,
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: _login,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ));
        }),
      ),
    );
  }
}
