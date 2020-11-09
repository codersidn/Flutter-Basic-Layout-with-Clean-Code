import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: -25,
            left: -50,
            child: Image.asset(
              "assets/images/logo-bg.png",
              width: size.width * 0.5,
            ),
          ),
          child
        ],
      ),
    );
  }
}
