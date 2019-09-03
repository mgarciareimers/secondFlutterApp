import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: this._createItems(),
      ),
    );
  }

  List<Widget> _createItems() {
    return options.map((option) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(option),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          Divider(indent: 15, endIndent: 15, height: 0)
        ]
      );
    }).toList();
  }

}