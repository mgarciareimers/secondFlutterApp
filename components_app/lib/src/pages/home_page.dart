import 'package:flutter/material.dart';

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
    return ListView(children: this._createListViewItems());
  }

  // Method that creates the items list.
  List<Widget> _createListViewItems() {
    


    return [];
  }

}