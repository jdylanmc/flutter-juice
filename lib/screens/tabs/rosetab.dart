import 'package:flutter/material.dart';
import 'package:flutter_juice/widgets/loader.dart';

class RoseTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        title: Text("Rose Loader"),
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
                  color:LoaderColor.Rose,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Loader(
                  radius: 60,
                  color:LoaderColor.Rose,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Loader(
                  radius: 90,
                  color:LoaderColor.Rose,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}