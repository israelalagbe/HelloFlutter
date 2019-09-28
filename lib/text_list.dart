import 'package:flutter/material.dart';

void main() {
  runApp(HelloApp());
}

class HelloApp extends StatefulWidget {
  @override
  _HelloAppState createState() => _HelloAppState();
}

class _HelloAppState extends State<HelloApp> {
  Color bgColor = Colors.white10;
  bool loading = false;
  List items = [];
  _HelloAppState(){
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
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      height: 50,
                      child: Text(items[index],style: TextStyle(color: Colors.blue),),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
