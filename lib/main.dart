import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/base/ButtonWidget.dart';
import 'package:flutter_app/base/CheckBoxWidget.dart';
import 'package:flutter_app/base/CupertinoWidget.dart';
import 'package:flutter_app/base/ImageWidget.dart';
import 'package:flutter_app/base/TextFieldWidget.dart';
import 'package:flutter_app/base/TextWidget.dart';
import 'package:flutter_app/base/CounterWidget.dart';
import 'package:flutter_app/base/IconWidget.dart';
import 'package:flutter_app/base/TextFormFieldWidget.dart';
import 'package:flutter_app/layout/RowColumnWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "new_page": (context) => NewRoute(),
        "counter_widget": (context) => CounterWidget(),
        "cupertino_widget": (context) => CupertinoTestWidget(),
        "text_widget": (context) => TextWidget(),
        "button_widget": (context) => ButtonWidget(),
        "image_widget": (context) => ImageWidget(),
        "icon_widget": (context) => IconWidget(),
        "checkbox_widget": (context) => CheckBoxWidget(),
        "text_field_widget": (context) => TextFieldWidget(),
        "text_form_field_widget": (context) => TextFormFieldWidget(),
        "row_column_widget":(context)=>RowColumnWidget(),
      },
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
        child: Text(
          "This is a new Route",
          style: Theme.of(context).textTheme.overline,
        ),
      ),
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
//      debugDumpApp();
      _counter++;
//      debugDumpRenderTree();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                color: Color.fromARGB(255, 255, 155, 60),
                onPressed: () {
                  Navigator.pushNamed(context, "cupertino_widget");
                },
                child: Text(
                  "打开CupertinoWidget",
                  style: Theme.of(context).textTheme.subtitle,
                )),
            FlatButton(
                color: Color.fromARGB(255, 255, 155, 60),
                onPressed: () {
                  Navigator.pushNamed(context, "text_widget");
                },
                child: Text(
                  "TextWidget",
                  style: Theme.of(context).textTheme.subtitle,
                )),
            FlatButton(
              child: Text("ButtonWidget"),
              color: Color.fromARGB(255, 255, 155, 60),
              onPressed: () {
                Navigator.pushNamed(context, "button_widget");
              },
            ),
            FlatButton(
              child: Text("ImageWidget"),
              color: Color.fromARGB(255, 255, 155, 60),
              onPressed: () {
                Navigator.pushNamed(context, "image_widget");
              },
            ),
            FlatButton(
              child: Text("IconWidget"),
              color: Color.fromARGB(255, 255, 155, 60),
              onPressed: () {
                Navigator.pushNamed(context, "icon_widget");
              },
            ),
            FlatButton(
              child: Text("CheckBoxWidget"),
              color: Color.fromARGB(255, 255, 155, 60),
              onPressed: () {
                Navigator.pushNamed(context, "checkbox_widget");
              },
            ),
            FlatButton(
              child: Text("TextFieldWidget"),
              color: Color.fromARGB(255, 255, 155, 60),
              onPressed: () {
                Navigator.pushNamed(context, "text_field_widget");
              },
            ),
            FlatButton(
              child: Text("TextFormFieldWidget"),
              color: Color.fromARGB(255, 255, 155, 60),
              onPressed: () {
                Navigator.pushNamed(context, "text_form_field_widget");
              },
            ),
            FlatButton(
              child: Text("RowColumnWidget"),
              color: Color.fromARGB(255, 255, 155, 60),
              onPressed: () {
                Navigator.pushNamed(context, "row_column_widget");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
