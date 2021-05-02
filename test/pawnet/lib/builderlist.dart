import 'package:flutter/material.dart';
import 'package:pawnet/profile.dart';

class Builder_page extends StatefulWidget {
  @override
  builderState createState() => builderState();
}



class builderState extends State<Builder_page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:new ListView
        (
          padding: EdgeInsets.all(20),
          children: <Widget>[
            
            ListTile(
              leading: CircleAvatar(
                backgroundImage: ExactAssetImage("assets/img1.jpg")
              ),
              title: Text("Collie")
            ),
              ListTile(
    leading: CircleAvatar(
    backgroundImage: ExactAssetImage("assets/img2.jpg")
    ),
    title: Text("Polly")
    ),
    ListTile(
    leading: CircleAvatar(
    backgroundImage: ExactAssetImage("assets/img3.jpg")
    ),
    title: Text("Molly")
    ),
            ListTile(
    leading: CircleAvatar(
    backgroundImage: ExactAssetImage("assets/img4.jpg")
    ),
    title: Text("Folly")
    ),
            RaisedButton(
              child: Text('Add New'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),
                )
                );
              },
            )
          ]
      )
    );
  }
}