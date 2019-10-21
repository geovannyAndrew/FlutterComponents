import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = ScrollController();
  List<int> _listNumbers = [];
  int _lastItem = 0;

  @override
  void initState() {
    super.initState();
    _add10Images();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _add10Images();
      }
    });
  }

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
      controller: _scrollController,
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


  _add10Images(){
    for(int i = 1; i < 10; i++){
      _lastItem++;
      _listNumbers.add(_lastItem);
    }
    setState(() {
      
    });
  }
}