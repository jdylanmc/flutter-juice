import 'package:flutter/material.dart';

class FeaturedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Featured"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Center(child: Text("Featured")),
            ],
          )
        )
      )
    );
  }
}