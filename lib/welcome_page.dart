import 'package:flutter/material.dart';

import 'package:sized_context/sized_context.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.isLandscape
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MyContainer(),
                MyContainer(),
              ],
            )
          : Column(
              children: <Widget>[
                MyContainer(),
                MyContainer(),
              ],
            ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      width: context.isLandscape ? context.widthPx * 0.5 : context.widthPx,
      height: context.isLandscape ? context.heightPx : context.heightPx * 0.5,
      child: Image.asset(
        'images/top.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
