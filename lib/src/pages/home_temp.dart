import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _createListWidgetsShort()
      ),
    );
  }

  List<Widget> _createListWidgets(){
    List<Widget> listWidgets = List<Widget>();
    for (var option in options) {
      listWidgets..add(
        ListTile(
          title: Text( option ),
        )
      )..add(Divider(
        color: Colors.red,
        height: 4.0,
      ));
    }
    return listWidgets;
  }

  List<Widget> _createListWidgetsShort(){
    final widgets = options.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item ),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          Divider(
            color: Colors.red,
            height: 4.0,
          )
        ],
      );
    });
    return widgets.toList();
  }
}