import 'package:flutter/material.dart';
import 'package:flutter_juice/widgets/loader.dart';

class WhiteTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("White Loader"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Loader(
                  radius: 30,
                  color:LoaderColor.White,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Loader(
                  radius: 60,
                  color:LoaderColor.White,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Loader(
                  radius: 90,
                  color:LoaderColor.White,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}