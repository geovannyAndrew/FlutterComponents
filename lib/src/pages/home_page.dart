import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/providers/menu_provider.dart';
import 'package:flutter_widgets/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> asyncSnapshot){
        return ListView(
          children: _createListItems(context, asyncSnapshot.data),
        );
      },
    );
    
  }

  List<Widget> _createListItems(BuildContext context, List<dynamic> data) {
    return data.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item['texto']),
            leading: getIcon(item['icon']),
            trailing: Icon(Icons.arrow_right,
              color: Colors.blue,
            ),
            onTap: (){
              /*final route = MaterialPageRoute(
                builder: (context) => AlertPage()
              );
              Navigator.push(context, route);*/
              Navigator.pushNamed(context, item['ruta']);
            },
          ),
          Divider(
            height: 4.0,
            color: Colors.grey,
          )
        ],
      );
    }).toList();
  }
}