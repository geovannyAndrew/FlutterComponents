import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/pages/animated_container_page.dart';
import 'package:flutter_widgets/src/pages/avatar_page.dart';
import 'package:flutter_widgets/src/pages/cards_page.dart';
import 'package:flutter_widgets/src/pages/home_page.dart';
import 'package:flutter_widgets/src/pages/input_page.dart';
import 'package:flutter_widgets/src/pages/listview_page.dart';
import 'package:flutter_widgets/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/'       : (BuildContext context) => HomePage(),
    'avatar'  : (BuildContext context) => AvatarPage(),
    'alert'   : (BuildContext context) => AlertPage(),
    'card'   : (BuildContext context) => CardPage(),
    'animatedContainer' : (BuildContext context) => AnimatedContainerPage(),
    'inputs'  : (BuildContext context) => InputPage(),
    'sliders' : (BuildContext context) => SliderPage(),
    'list'   : (BuildContext context) => ListPage(),
  };
}
