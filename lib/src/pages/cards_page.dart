import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cards Page'),
        ),
        body: ListView(
          children: <Widget>[
            _cardType1()
          ],
        ),
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Card Title'),
              subtitle: Text('"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Cancel',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                  onPressed: (){

                  },
                ),
                FlatButton(
                  child: Text('Ok',
                    style: TextStyle(
                      color: Colors.blue
                    )
                  ),
                  onPressed: (){
                    
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}