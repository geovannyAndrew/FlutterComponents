import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{
  List<dynamic> options = [];

  _MenuProvider(){
//    loadData();
  }

  Future<List<dynamic>> loadData() async {
    var data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    print(dataMap['rutas']);
    options = dataMap['rutas'];
    return options;
  } 
}

final menuProvider = _MenuProvider();