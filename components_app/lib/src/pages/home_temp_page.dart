import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {

  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        centerTitle: true,
      ),
      body: ListView(
        children: this._createItems(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (var option in this.options) {
      list.add(
        Column(
          children: <Widget>[
            ListTile(
              title: Text(option),
              subtitle: Text('Subtítulo'),
              leading: Icon(Icons.access_alarm),
              trailing: Icon(Icons.arrow_right),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              color: Colors.blueAccent,
            )
          ],
        ),
      );
    }

    return list;
  }
}