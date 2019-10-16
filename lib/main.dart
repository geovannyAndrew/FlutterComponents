import 'package:flutter/material.dart';
import 'package:flutter_widgets/routes/routes.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      routes: getApplicationRoutes(),
      onGenerateRoute: (routeSettings){
        print('Ruta name: ${routeSettings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}