import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.britannica.com/73/137473-050-EEF6EAFF/Stan-Lee.jpg'),
              radius: 23.0,
            ),
          ),
          CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.brown,
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://cdn.britannica.com/73/137473-050-EEF6EAFF/Stan-Lee.jpg'),
          placeholder: AssetImage('assets/loading.gif'),
          fadeInDuration: Duration(
            milliseconds: 2000
          ),
        ),
      ),
    );
  }
}