import 'package:flutter/material.dart';

import 'dart:async';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _numbers = new List();
  int _lastNumber = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    this._addTenImages();

    this._scrollController.addListener(() {
      if (this._scrollController.position.pixels == this._scrollController.position.maxScrollExtent) {
        //this._addTenImages();
        this._fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    this._scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists'),
      ),
      body: Stack(
        children: <Widget>[
          this._createList(),
          this._createCircleProgressBar(),
        ],
      ),
    );
  }

  Widget _createList() {
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: this._numbers.length,
        itemBuilder: (BuildContext context, int position) {
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image=${this._numbers[position]}'),
            placeholder: AssetImage('assets/loading.gif'),
            fit: BoxFit.fitWidth,
          );
        },
        controller: this._scrollController,
      ),
      onRefresh: this._getPage1,
    );
  }

  // Method that gets
  Future<Null> _getPage1() async {
    final duration = new Duration(seconds: 2);

    new Timer(duration, () {
      this._numbers.clear();
      this._lastNumber++; // New items on list.
      this._addTenImages();
    });

    return Future.delayed(duration);
  }

  Widget _createCircleProgressBar() {
    if (this._isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  // Method that adds ten pictures.
  void _addTenImages() {
    for (int i = 1; i < 10; i++) {
      this._lastNumber++;
      this._numbers.add(this._lastNumber);

      setState(() {

      });
    }
  }

  // Method that fetches the data.
  Future _fetchData() async {
    this._isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);

    new Timer(duration, httpResponse);
  }

  // Http Response.
  void httpResponse() {
    this._isLoading = false;
    this._addTenImages();
    this._scrollController.animateTo(this._scrollController.position.pixels + 100, duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
  }
}
