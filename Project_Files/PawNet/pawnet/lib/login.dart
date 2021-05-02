import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pawnet/homepage.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  final textController = TextEditingController();
  final textController2 = TextEditingController();
  //returns login info

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
            TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: "E-Mail",
                filled: true,
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: textController2,
              decoration: InputDecoration(
                labelText: "Password",
                filled: true,
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child:Text("Cancel"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                RaisedButton(
                  child: Text("Next"),
                  onPressed: signIn,
                )
              ],
            )
          ],
        ),
      )
    );
  }
  Future<void> signIn() async {
    email = textController.text;
    password = textController2.text;
    try {
      final FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }catch(e){
    }
  }



}
