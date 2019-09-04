import 'package:flutter/material.dart';

import 'package:components_app/src/providers/menu_provider.dart';
import 'package:components_app/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: this._createList()
    );
  }

  // Method that creates the list.
  Widget _createList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: this._createListViewItems(snapshot.data, context)
        );
      }, 
    );
  }

  // Method that creates the items list.
  List<Widget> _createListViewItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];

    if (data != null) {
      data.forEach((option) {
        final Widget element = ListTile(
          title: Text(option['texto']),
          leading: getIcon(option['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            Navigator.pushNamed(context, option['ruta']);
          }
        );

        options..add(element)..add(Divider());
      });
    }
    return options;
  }
}