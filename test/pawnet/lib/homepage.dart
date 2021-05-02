import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import "package:pawnet/chatlist.dart";
import 'package:pawnet/ProfileView.dart';
import 'package:pawnet/builderlist.dart';
import "package:pawnet/example1.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  int _selectedIndex = 1;
  final _widgetOptions = [
    ProfileView(),
    Builder_page(),
    chatPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(216, 245, 255, 1),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person),title: new Text("Profile")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),title: new Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.mail), title: new Text("Messages")),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

    /*return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: ("Profile")),
                Tab(text: ("Home")),
                Tab(text: ("Chats"))
              ],
            ),
            title: Text("PawNet")
          ),
          body: TabBarView(
            children: [
              ProfileView(),
              Example1(),
              chatPage()
            ],
          ),
        ),
    );


  }
}
*/



