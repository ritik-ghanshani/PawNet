import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class ProfilePage extends StatefulWidget {
  @override
  _profilePageState createState() => new _profilePageState();

}

// ignore: camel_case_types
class _profilePageState extends State<ProfilePage>{
  String name, email, phone, desc, address, pet, role;
  List<DropdownMenuItem<String>> items = [
    new DropdownMenuItem(child: new Text('Adopter'), value: 'Adopter',),
    new DropdownMenuItem(child: new Text('Adoptee'), value: 'Adoptee'),
  ];
  final _key = GlobalKey<FormState>();
  String valinside = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Form(
          key: _key,
        child: new ListView(
          padding: EdgeInsets.all(20.0),
        children: <Widget>[
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return 'No text entered';
              }
            },
            decoration: const InputDecoration(
              hintText: 'Name',

            ),
            onSaved: (val){
              name = val;
            },

          ),
          SizedBox(height: 15),
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return 'No text entered';
              }
            },
            decoration: const InputDecoration(
              hintText: 'Email'

            ),

              onSaved: (val){
                  email = val;
               },


    ),
          SizedBox(height: 15),
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return 'No text entered';
              }
            },
            decoration: const InputDecoration(
                hintText: 'Phone'

            ),

            onSaved: (val){
              phone = val;
            },
          ),

          SizedBox(height: 15),
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return 'No text entered';
              }
            },
            decoration: const InputDecoration(
                hintText: 'Description'

            ),
            onSaved: (val){
              desc = val;
            },

          ),
          SizedBox(height: 15),
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return 'No text entered';
              }
            },
            decoration: const InputDecoration(
                hintText: 'Address'

            ),
            onSaved: (val){
              address = val;
            },

          ),
          SizedBox(height: 15),
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return 'No text entered';
              }
            },
            decoration: const InputDecoration(
                hintText: 'Pet Choice'
            ),

            onSaved: (value){
              pet = value;
            },
          ),
          SizedBox(height: 10),
          new DropdownButtonHideUnderline(
              child:
              new DropdownButton( value: role, isDense: true, items: items, hint: new Text('Select role'),onChanged: (val) {setState(() {
                role = val;
              });})),
          SizedBox(height: 45),


        SizedBox(height: 70),

          RaisedButton(
            onPressed: (){
              if(_key.currentState.validate()) {
                _key.currentState.save();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    // return object of type Dialog
                    return AlertDialog(
                      title: new Text("Saving Data"),
                      content: new Text(""),
                      actions: <Widget>[
                        // usually buttons at the bottom of the dialog
                        new FlatButton(
                          child: new Text("Close"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
                final mainReference = FirebaseDatabase.instance.reference();
                var data = {
                  "address": address,
                  "description": desc,
                  "email": email,
                  "name": name,
                  "petChoice": pet,
                  "role": role,
                  "phoneNumber": phone,
                };
                mainReference.child('test').push().set(data).then((v){

                });
              }},
            child: Text("Submit"),
          ),




      ]))
    ));}

  }

