import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/pages/avatar_page.dart';
import 'package:flutter_widgets/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/'       : (BuildContext context) => HomePage(),
        'avatar'  : (BuildContext context) => AvatarPage(),
        'alert'   : (BuildContext context) => AlertPage(),
      },
    );
  }
}