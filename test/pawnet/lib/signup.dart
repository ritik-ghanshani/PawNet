import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawnet/homepage.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();

}
class _SignupPageState extends State<SignupPage> {

  String email = '';
  String password = '';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "E-Mail",
                  filled: true,
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  filled: true,
                ),
                obscureText: true,
              ),
              TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
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
                    onPressed: (){
                      if(passwordController.text == confirmPasswordController.text){
                        signUp();
                      }
                      else
                        {

                        }
                    },
                  )
                ],
              )
            ],
          ),
        )
    );
  }
  Future<void> signUp() async {
    email = emailController.text;
    password = passwordController.text;
    try {
      FirebaseUser user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }catch(e){
    }
}
}