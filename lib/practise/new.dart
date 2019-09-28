import 'package:flutter/material.dart';

class NewApp extends StatefulWidget {
  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  _getCircleImage(String url) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 64.0,
        height: 64.0,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new NetworkImage(url),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  _getNavItem(String label, IconData icon, BuildContext context) {
    return FlatButton(
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black.withOpacity(0.7),
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      padding: EdgeInsets.all(0),
    );
  }

  @override
  Widget build(BuildContext context) {
    var lists = [
      {"icon": Icons.home, "label": "Home"}
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.blue,
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/office.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.lightBlue,
                    ),
                    //color: Colors.lightBlue,
                    width: double.infinity,
                    height: 200.0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.blue.withOpacity(0.8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          // new ClipRRect(
                          //   borderRadius: new BorderRadius.circular(8.0),
                          //   child: Image.asset(
                          //     "assets/images/maxresdefault.jpg",
                          //     height: 150.0,
                          //     width: 100.0,
                          //   ),
                          // )
                          ClipOval(
                            child: Image.asset(
                              "assets/images/alagbe003.png",
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Israel Alagbe",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text(
                            "israelalagbe53@gmail.com",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        _getNavItem("Home", Icons.home, context),
                        _getNavItem("Profile", Icons.person, context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Username:"),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Password",
                  textAlign: TextAlign.start,
                ),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 200,
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text(
                        "Sign In",
                        textDirection: TextDirection.ltr,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
