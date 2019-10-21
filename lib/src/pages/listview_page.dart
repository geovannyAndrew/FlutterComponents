import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  List<int> _listNumbers = [3,4,5,6,7,8,9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('ListView'),
       ),
       body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: _listNumbers.length,
      itemBuilder: (BuildContext builContext, int index){
        final imageId = _listNumbers[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/id/$imageId/500/300'),
          placeholder: AssetImage('assets/loading.gif'),
          fadeInDuration: Duration(
            milliseconds: 500
          ),
        );
      },
    );
  }
}