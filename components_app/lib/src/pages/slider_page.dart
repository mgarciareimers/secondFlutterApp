import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _sliderValue = 100;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            this._createSlider(),
            this._createCheckbox(),
            this._createSwitch(),
            Expanded(
              child: this._createImage(),
            ),

          ],
        ),
      ),
    );
  }

  // Method that creates a slider.
  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Image Size',
      //divisions: 20,
      min: 10.0,
      max: 400.0,
      value: _sliderValue,
      onChanged: this._blockCheck ? null : (value) {
        setState(() {
          this._sliderValue = value;
        });
      },
    );
  }

  // Method that creates a checkbox.
  Widget _createCheckbox() {
    /*return Checkbox(
      value: this._blockCheck,
      onChanged: (value) {
        setState(() {
          this._blockCheck = value;
        });
      },
    );*/
    return CheckboxListTile(
      title: Text('Block slider'),
      value: this._blockCheck,
      onChanged: (value) {
        setState(() {
          this._blockCheck = value;
        });
      },
    );
  }

  // Method that creates a switch.
  Widget _createSwitch() {
    /*return Switch(
      value: this._blockCheck,
      onChanged: (value) {
        setState(() {
          this._blockCheck = value;
        });
      },
    );*/

    return SwitchListTile(
      title: Text('Block slider'),
      value: this._blockCheck,
      onChanged: (value) {
        setState(() {
          this._blockCheck = value;
        });
      },
    );
  }

  // Method that creates an image.
  Widget _createImage() {
    return Image(
      image: NetworkImage('http://3.bp.blogspot.com/-Tvi32c_Oh7c/TbsB56q70GI/AAAAAAAAAIE/8oeq1pgGWB0/s1600/tom_bombadil1.jpg'),
      width: this._sliderValue,
      fit: BoxFit.contain,
    );
  }
}
