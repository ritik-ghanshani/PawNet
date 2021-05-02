
import 'package:flutter/material.dart';
import 'package:pawnet/chat.dart';


class UserTab extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  final String eid;
  final String pid;
  final bool isListTab;

  UserTab(
      {this.name,
      this.description,
      this.image,
      this.eid,
      this.isListTab,
      this.pid});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          profileImage(image),
          infoTab(name, description),
          isListTab ? chatPageOpener(context) : Container(),
        ],
      ),
    );
  }

  Widget profileImage(String image) {
    return Positioned(
      left: 5,
      top: -50,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
        ),
      ),
    );
  }

  Widget chatPageOpener(context) {
    return Positioned(
      right: 20,
      child: FloatingActionButton(
        heroTag: this.eid,
        backgroundColor: Color.fromRGBO(75, 105, 255, 1),
        child: Icon(Icons.arrow_forward_ios),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => testPage(),
          )
          );
        }
      ),
    );
  }

  Widget infoTab(String name, String detail) {
    return Positioned(
      left: 120,
      top: -20,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Text(
              detail,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            Divider(
              height: 10,
            ),

          ]),
    );
  }
}
