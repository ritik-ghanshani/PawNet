import 'package:flutter/material.dart';
import 'package:pawnet/chatmessage.dart';

int c=0;

class testPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("PawNet"),
      ),
      body: new indiChatPage(),
    );
  }
}
class indiChatPage extends StatefulWidget {
  //List
  //String uid
  //String uid2 for other user
  //chatPage({this.allChats, this.uid});
  @override
  State<StatefulWidget> createState() {
    return indiChatPageState();
  }
}

class indiChatPageState extends State<indiChatPage> {
  @override
  final TextEditingController _chatController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmit(String text) {
    _chatController.clear();
    c+=1;
    ChatMessage message = new ChatMessage(
        text: text,
        a:c
    );
    setState(() {
      _messages.insert(0, message);
    });
  }




  Widget _chatEnvironment() {
    return IconTheme(
      data: new IconThemeData(color: Colors.blue),
      child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
              children: <Widget>[
                new Flexible(
                  child:
                new TextField(
                    decoration: new InputDecoration.collapsed(
                        hintText: "Say Something..."),
                    controller: _chatController,
                    onSubmitted: _handleSubmit,
                  ),
                ),

                new Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: new IconButton(
                      icon: new Icon(Icons.send),
                      onPressed: () => _handleSubmit(_chatController.text),
                    )
                )

              ]
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Flexible(
          child:ListView.builder(
            padding : new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_,int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(height: 1.0),
        new Container(decoration: new BoxDecoration(
          color: Colors.white10
        ),
          child:_chatEnvironment(),
        )

      ]
        );
  }
}
