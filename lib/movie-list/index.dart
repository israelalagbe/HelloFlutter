import 'package:flutter/material.dart';

class MovieListApp extends StatefulWidget {
  @override
  _MovieListAppState createState() => _MovieListAppState();
}

class _MovieListAppState extends State<MovieListApp> {
  Color bgColor = Colors.white10;
  bool loading = false;
  List items = [];
  _MovieListAppState() {
    for (var i = 0; i < 300; i++) {
      items.add("Item $i");
    }
  }
  btnPressed() {
    if (bgColor == Colors.blueGrey) {
      setState(() {
        bgColor = Colors.white;
      });
    } else {
      setState(() {
        bgColor = Colors.blueGrey;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Item List"),
          actions: <Widget>[
            IconButton(
                icon: new Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    loading = !loading;
                    print("Loading $loading");
                  });
                })
          ],
        ),
        body: Container(
          color: bgColor,
          child: Center(
            child: loading
                ? CircularProgressIndicator()
                : ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          FlatButton(
                            //padding: EdgeInsets.all(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.asset("assets/images/maxresdefault.jpg"),
                                Text("Item $index"),
                              ],
                            ),
                            onPressed: (){},
                          ),
                          Divider()
                        ],
                      );
                    }),
          ),
        ),
      ),
    );
  }
}
