import 'package:flutter/material.dart';
import 'package:flutter_juice/widgets/loader.dart';

class RedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Red Loader"),
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
                  color:LoaderColor.Red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Loader(
                  radius: 60,
                  color:LoaderColor.Red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Loader(
                  radius: 90,
                  color:LoaderColor.Red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}