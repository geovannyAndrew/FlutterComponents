import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Listtile Title'),
          ),
          Divider(),
          ListTile(
            title: Text('Listtile Title 2'),
          ),
          Divider(),
          ListTile(
            title: Text('Listtile Title 3'),
          ),
          Divider(),
          ListTile(
            title: Text('Listtile Title 4'),
          ),
          Divider(),
          ListTile(
            title: Text('Listtile Title 2'),
          ),
          Divider(),
          ListTile(
            title: Text('Listtile Title 3'),
          ),
          Divider(),
          ListTile(
            title: Text('Listtile Title 4'),
          ),
          Divider(),
          ListTile(
            title: Text('Listtile Title 2'),
          ),
          Divider(),
          ListTile(
            title: Text('Listtile Title 3'),
          ),
          Divider(),
          ListTile(
            title: Text('Listtile Title 4'),
          )
        ],
      ),
    );
  }
}