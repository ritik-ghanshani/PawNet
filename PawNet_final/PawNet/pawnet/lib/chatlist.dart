import "package:flutter/material.dart";
import 'package:pawnet/widgets/nominee_tab.dart';

class chatPage extends StatefulWidget {
  //List allChats
  //String uid
  //chatPage({this.allChats, this.uid});
  @override
  State<StatefulWidget> createState() {
    return _chatPageState();
  }
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 1,//this.widget.allChats.length
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
            child: UserTab(
              name: "Adopter",//this.widget.allChats[index]['name'],
              description: "Hi! I am interested in your pet!",//this.widget.allChats[index]['description'],
              image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Generic-person.svg/1024px-Generic-person.svg.png",//this.widget.options[index]['image'],
              eid: "1928",//this.widget.allChats[index]['eid'],needs to be second user's ID
              pid: "2345",//this.widget.pid, needs to be chatID
              isListTab: true,
        ),
      );
    },
    )

    );
  }
}