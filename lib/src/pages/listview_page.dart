import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = ScrollController();
  List<int> _listNumbers = [];
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _add10Images();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('ListView'),
       ),
       body: Stack(
         children: <Widget>[
           _createList(),
           _createLoading()
         ],
        ),
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

  Future _fetchData() async{
    _isLoading = true;
    setState((){});
    Timer(
      Duration(seconds: 2), 
      (){
        _isLoading = false;
        _add10Images();
        _scrollController.animateTo(
          _scrollController.position.pixels + 50,
          curve: Curves.fastOutSlowIn,
          duration: Duration(
            milliseconds: 200
          )
        );
      });
  }

  Widget _createLoading() {
    if(_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: CircularProgressIndicator()
          ),
          SizedBox(
            height: 8.0,
          )
        ],
      );
    }
    else{
      return SizedBox();
    }
  }
}