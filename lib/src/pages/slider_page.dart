import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valueSlider = 200;

  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckbox(),
            _createCheckboxListTile(),
            _createSwitch(),
            Expanded(
              child: _createImage()
            )
          ],
        )
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: 'Animals size',
      //divisions: 20,
      onChanged: _blockCheck ? null : (newValue){
        setState(() {
          _valueSlider = newValue;
        });
      },
      min: 100,
      max: 300,
      value: _valueSlider,
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
        'https://image.shutterstock.com/image-photo/kiev-ukraine-april-16-2015-260nw-276697244.jpg',
      ),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckbox() {
    return Checkbox(
      value: _blockCheck,
      onChanged: (value){
        setState(() {
         _blockCheck = value; 
        });
      },
    );
  }

  Widget _createCheckboxListTile() {
    return CheckboxListTile(
      title: Text('CheckboxListTile'),
      value: _blockCheck,
      onChanged: (value){
        setState(() {
         _blockCheck = value; 
        });
      },
    );
  }

  Widget _createSwitch() {
    return Switch(
      value: _blockCheck,
      onChanged: (value){
        setState(() {
         _blockCheck = value; 
        });
      },
    );
  }
}