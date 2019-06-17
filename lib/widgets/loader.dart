import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final double radius;
  final LoaderColor color;



  const Loader({
    this.radius = 60.0,
    this.color = LoaderColor.Red,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: this.radius,
      child: FlareActor(
        _getAssetPath(),
        alignment: Alignment.center,
        fit: BoxFit.contain,
        animation: "Loading",
      ),
    );
  }

  _getAssetPath() {
    switch (this.color) {
      case LoaderColor.Rose:
        return "assets/wine-loader-rose.flr";
      case LoaderColor.White:
        return "assets/wine-loader-white.flr";
      case LoaderColor.Red:
      default:
        return "assets/wine-loader-red.flr";
    }
  }
}

enum LoaderColor {
  Red,
  White,
  Rose
}