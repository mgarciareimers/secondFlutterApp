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
          SizedBox(height: 30),
          this._cardType1(),
          SizedBox(height: 30),
          this._cardType2(),
          SizedBox(height: 30),
          this._cardType1(),
          SizedBox(height: 30),
          this._cardType2(),
          SizedBox(height: 30),
        ],
        padding: EdgeInsets.all(10),
      ),
    );
  }

  // Method that creates the first card type.
  Widget _cardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('I\'m the title'),
            subtitle: Text('This is the subtitle of the card. It has to be longer than the title.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }

  // Method that creates the second card type.
  Widget _cardType2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('This is a nice image.'),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 2, offset: Offset(2, 10)),
        ],
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
