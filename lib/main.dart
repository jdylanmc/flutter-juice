import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_juice/screens/loading.dart';
import 'package:flutter_juice/screens/tabpage.dart';

void main() => runApp(JuiceApp());

class JuiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => LoadingScreen(),
          '/landing': (context) => TabPage()
        },
        title: 'Flutter Juice',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.black87
          )
        ),
        debugShowCheckedModeBanner: false);
  }
}
