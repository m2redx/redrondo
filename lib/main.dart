
import 'package:flutter/material.dart';
import 'package:redrondo/page/view_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<NavigatorState> navKey = new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        navigatorKey: navKey,
        home: MainPage(),
        theme: ThemeData(fontFamily: 'Comfortaa'),
        routes: <String, WidgetBuilder>{
          '/view_page': (BuildContext context) => new MainPage(),

        }
    );
  }
}

