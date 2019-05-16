import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageWidget"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 2000,
              height: 200,
              fit: BoxFit.cover,
            ),
            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 2000,
              height: 200,
              fit: BoxFit.cover,
              color: Colors.orange[200],
              colorBlendMode: BlendMode.hardLight,
            ),
            Image(
              image: AssetImage("images/avatar.png"),
              width: 2000,
              height: 200,
              repeat: ImageRepeat.repeat,
            )
          ],
        ),
      ),
    );
  }
}
