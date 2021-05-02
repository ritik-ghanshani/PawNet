import 'package:flutter/material.dart';
import "package:pawnet/login.dart";
import 'package:pawnet/signup.dart';

class LoginSignupPage extends StatefulWidget {
  @override
  _LoginSignupPageState createState() => new _LoginSignupPageState();

}
class _LoginSignupPageState extends State<LoginSignupPage> {
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
          child:ListView(
            padding: EdgeInsets.symmetric(horizontal:24.0),
            children: <Widget>[
              SizedBox(height: 80.0),
              Column(
                children: <Widget>[
                  Image.asset("assets/login_icon.jpg"),
                  SizedBox(height: 20.0),
                  Text("PawNet Login"),
                ],
              ),
              SizedBox(height: 12.0),
              RaisedButton(
                child: Text("Login"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },

              ),
              RaisedButton(
                  child: Text("Signup"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                  }
              )

            ],
          ),
        )
    );
  }
}