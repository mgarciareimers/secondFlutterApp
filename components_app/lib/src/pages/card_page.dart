
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        children: <Widget>[
          this._cardType1(),
          SizedBox(height: 30),
          this._cardType2(),
        ],
        padding: EdgeInsets.all(10),
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('I am the title of this card'),
            subtitle: Text('I am the description of the card I want you to see so you know what I am right now!'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                textColor: Colors.red,
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
                textColor: Colors.blue,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardType2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage('https://images.unsplash.com/photo-1523712999610-f77fbcfc3843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('I do not know what to put.'))
        ],
      ),
    );
  }
}