import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle1 = TextStyle(fontSize: 20, color: Colors.orange);
    TextStyle textStyle2 = TextStyle(fontSize: 20, color: Colors.red);
    return Scaffold(
      appBar: AppBar(
        title: Text("RowColumnWidget"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Hello World", style: textStyle1),
                Text(" I am BugKiller", style: textStyle2)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Hello World",
                  style: textStyle1,
                ),
                Text("  MainAxisAlignment.center", style: textStyle2)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Hello World", style: textStyle1),
                Text("  MainAxisAlignment.start", style: textStyle2)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Hello World", style: textStyle1),
                Text("   MainAxisAlignment.end", style: textStyle2)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text("    Hello World", style: textStyle1),
                Text("TextDirection.rtl", style: textStyle2)
              ],
            ),
          ),
          Container(
            color: Colors.green,
            width: 200,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[Text("Hello World"), Text("I am BugKiller")],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Hello",
                    style: TextStyle(color: Colors.brown,fontSize: 30),
                  ),
                  Text(
                    "World",
                    style: TextStyle(color: Colors.brown,fontSize: 30),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
