import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Inputs'),
       ),
       body: ListView(
         padding: EdgeInsets.all(8),
         children: <Widget>[
           _createInput(),
           Divider(),
           _createEmail(),
           Divider(),
           _createPassword(),
           Divider(),
           _createPerson(),
           Divider(),
           
         ],
       ),
    );
  }

  Widget _createInput() {
    return TextField(
      onChanged: (String text){
        setState(() {
          _name = text;
        });
      },
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 3
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 3
          )
        ),
        counter: Text('Letras ${_name.length}'),
        counterStyle: TextStyle(
          color: Colors.purple
        ),
        hintText: 'Name Person',
        labelText: 'Label Input',
        helperText: 'Helper Text',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.phone)
      ),
    );
  }


  Widget _createEmail() {
    return TextField(
      onChanged: (String text){
        setState(() {
          _email = text;
        });
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 3
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 3
          )
        ),
        counter: Text('Letras ${_email.length}'),
        counterStyle: TextStyle(
          color: Colors.purple
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
    );
  }

  Widget _createPassword() {
    return TextField(
      onChanged: (String text){
        setState(() {
          _email = text;
        });
      },
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 3
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.yellow,
            width: 3
          )
        ),
        counter: Text('Letras ${_email.length}'),
        counterStyle: TextStyle(
          color: Colors.purple
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.visibility),
        icon: Icon(Icons.lock)
      ),
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text(_name),
    );
  }
}