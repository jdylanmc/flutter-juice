import 'package:flutter/material.dart';
import 'package:flutter_juice/screens/tabs/featured.dart';
import 'package:flutter_juice/screens/tabs/redtab.dart';
import 'package:flutter_juice/screens/tabs/rosetab.dart';
import 'package:flutter_juice/screens/tabs/whitetab.dart';

import 'tabs/featured.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  TabController controller;

  var tabTitle = "";

  @override
  void initState() {
    super.initState();
    tabTitle = "Featured";
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.black87,
        child: new TabBar(
          onTap: (context) => {
                this.setState(() {
                  if (controller.index == 0) {
                    this.tabTitle = "Featured";
                  } else if (controller.index == 1) {
                    this.tabTitle = "Red Loader Demo";
                  } else if (controller.index == 2) {
                    this.tabTitle = "White Loader Demo";
                  } else if (controller.index == 3) {
                    this.tabTitle = "Rose Loader Demo";
                  }
                })
              },
          controller: controller,
          labelColor: Colors.redAccent,
          unselectedLabelColor: Colors.white,
          indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.star_border),
              child: Text(
                "Featured",
                style: TextStyle(fontSize: 10),
              ),
            ),
            new Tab(
              icon: new Icon(Icons.tag_faces),
              child: Text(
                "Reds",
                style: TextStyle(fontSize: 10),
              ),
            ),
            new Tab(
              icon: new Icon(Icons.tag_faces),
              child: Text(
                "Whites",
                style: TextStyle(fontSize: 10),
              ),
            ),
            new Tab(
              icon: new Icon(Icons.tag_faces),
              child: Text(
                "Rose",
                style: TextStyle(fontSize: 10),
              ),
            ),          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new FeaturedTab(),
          new RedTab(),
          new WhiteTab(),
          new RoseTab(),
        ],
      ),
    );
  }
}
