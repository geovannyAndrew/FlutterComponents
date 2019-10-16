import 'package:flutter/material.dart';
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
          children: _createListItems(asyncSnapshot.data),
        );
      },
    );
    
  }

  List<Widget> _createListItems(List<dynamic> data) {
    return data.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item['texto']),
            leading: getIcon(item['icon']),
            trailing: Icon(Icons.arrow_right,
              color: Colors.blue,
            ),
            onTap: (){},
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