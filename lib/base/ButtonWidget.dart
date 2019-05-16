import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New Route"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("RaisedButton"),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("FlatButton"),
                onPressed: () => {},
              ),
              OutlineButton(
                child: Text("OutlineButton"),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("Submit"),
                color: Colors.orange,
                highlightColor: Colors.orange[300],
                colorBrightness: Brightness.light,
                splashColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {},
              ),
              RaisedButton(
                child: Text("Submit"),
                color: Colors.orange,
                elevation: 5,
                highlightColor: Colors.orange[300],
                colorBrightness: Brightness.light,
                splashColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {},
              ),
            ],
          ),
        ));
  }
}
