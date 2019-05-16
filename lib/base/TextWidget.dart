import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New Route"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              new Text(
                "Hello World",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontFamily: "Courier New",
                    background: new Paint()..color = Colors.yellow,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dotted),
              ),
              new Text(
                "Hello world! I'm Jack." * 4,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              new Text(
                "Hello World",
                textScaleFactor: 1.5,
              ),
              new Text("百度一下，你就知道"),
              Text.rich(TextSpan(children: [
                TextSpan(text: "百度一下，你就知道"),
                TextSpan(
                    text: "http://www.baidu.com",
                    style: TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.lineThrough,
                      fontSize: 25
                    ),)
              ]))
            ],
          ),
        ));
  }
}
