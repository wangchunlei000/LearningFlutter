import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
// accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    double size = 60.0;
    return Scaffold(
      appBar: AppBar(
        title: Text("IconWidget"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: size,
                  color: Colors.orange),
            ),
            Icon(
              Icons.accessible,
              color: Colors.green,
              size: size,
            ),
            Icon(
              Icons.error,
              color: Colors.red,
              size: size,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.blue,
              size: size,
            ),
          ],
        ),
      ),
    );
  }
}
