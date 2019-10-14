import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/providers/menu_provider.dart';

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
    print(menuProvider.options);
    return ListView(
      children: _createListItems(),
    );
  }

  List<Widget> _createListItems() {
    return [
      ListTile(
        title: Text('Hello World'),
      ),
      Divider(
        height: 4.0,
        color: Colors.black,
      )
    ];
  }
}