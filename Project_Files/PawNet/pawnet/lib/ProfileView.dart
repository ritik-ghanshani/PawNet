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
    return Form(
        key: _key,
        child:ListView(
              children: <Widget>[
                RaisedButton(
                  child: Text('Edit Profile'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  })
              ],
           ));
  }}