import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY5SFzGGICx5-AMRYhVx8Ggu89NecZ9W4dAHQhOLpMc0TtvVp0'),
              radius: 22,
            ),
          ),
          Container(
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.green,
            ),
            margin: EdgeInsets.only(right: 10),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://staticuestudio.blob.core.windows.net/buhomag/2016/03/22154524/stan.jpg?auto=compress,format'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }

}