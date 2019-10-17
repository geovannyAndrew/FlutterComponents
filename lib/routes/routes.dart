import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/pages/avatar_page.dart';
import 'package:flutter_widgets/src/pages/cards_page.dart';
import 'package:flutter_widgets/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/'       : (BuildContext context) => HomePage(),
    'avatar'  : (BuildContext context) => AvatarPage(),
    'alert'   : (BuildContext context) => AlertPage(),
    'card'   : (BuildContext context) => CardPage(),
  };
}
