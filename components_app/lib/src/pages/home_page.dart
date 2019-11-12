import 'package:flutter/material.dart';

import 'package:components_app/src/providers/menu_provider.dart';
import 'package:components_app/src/commons/utils/icon_string_util.dart';
import 'package:components_app/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _itemsList(snapshot.data, context),
          );
        });
  }

  List<Widget> _itemsList(List<dynamic> data, BuildContext context) {
    List<Widget> items = [];

    data.forEach((option) {
      items.add(ListTile(
        title: Text(option['text']),
        leading: getIcon(option['icon']),
        trailing: Icon(Icons.arrow_right, color: Colors.blue,),
        onTap: () => Navigator.pushNamed(context, option['route']),
      ));
      items.add(Divider());
    });

    return items;
  }
}
