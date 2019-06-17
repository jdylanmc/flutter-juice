import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_juice/widgets/loader.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // todo: kickoff async loading of all resources
    
    Timer(Duration(seconds: 3),
        () => {
          Navigator.of(context).pushReplacementNamed('/landing')
      }
    );
    
  }

  @override
  Widget build(BuildContext context) {
    final loaderRadius = 160.0;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/corks.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              new Loader(
                radius: loaderRadius,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


