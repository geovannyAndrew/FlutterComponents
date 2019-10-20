import 'package:flutter/material.dart';
import 'package:flutter_widgets/routes/routes.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'), // English
        const Locale('es','ES'), // Spanish
      ],
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