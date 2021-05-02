import "package:flutter/material.dart";
import 'package:pawnet/profile.dart';
import 'package:pawnet/homepage.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => new _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>{

  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body://Column(
        //children: <Widget>[
        /*SizedBox(
            width:200.0,
            height: 300.0,
          child: Image.network("https://us.123rf.com/450wm/tuktukdesign/tuktukdesign1606/tuktukdesign160600102/59070119-user-icon-man-profile-businessman-avatar-person-icon-in-vector-illustration.jpg?ver=6")
        ),*/

        ListView(
          children: <Widget>[
            FlatButton(
                child: Text("Name: John Smith")
            ),
            FlatButton(
                child: Text("Email: akshitanand1818@gmail.com")
            ),
            FlatButton(
                child: Text("Phone: 2675554898")
            ),
            FlatButton(
                child: Text("Description: A cool cat")
            ),FlatButton(
                child: Text("Address: XYZ,XYZ")
            ),FlatButton(
                child: Text("Pet Choice: Cat")
            ),
            SizedBox(
                height:200.0
            ),
            RaisedButton(
                child: Text('View Profile'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                })
          ],
        ));
  }}