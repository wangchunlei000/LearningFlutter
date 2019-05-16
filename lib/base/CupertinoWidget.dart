import 'package:flutter/cupertino.dart';

class CupertinoTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeGreen,
          child: Text("CupertinoButton"),
          onPressed: () {},
        ),
      ),
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino Demo"),
      ),
    );
  }
}
