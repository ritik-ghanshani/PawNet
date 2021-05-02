import 'package:flutter/material.dart';
const String _name = "Anonymous";

class ChatMessage extends StatelessWidget {
  final String text;
  final int a;

  ChatMessage({
    this.text,
    this.a
  });


  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: new CircleAvatar(
                child: new Image.network((a%2==0)?"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtG08A1ldEO-Un90tewZZdVyGBA2Ci9O-w-FZDNMCX2mCorEBs":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMrYqax_J2xys7O57n0QcYyBXR-AGNwPGBmaw6j-xJXHyFwAu5"),
              ),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(_name, style: Theme.of(context).textTheme.subhead),
                new Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: new Text(text),

                )
              ],
            )
          ],
        )
    );
  }
}
