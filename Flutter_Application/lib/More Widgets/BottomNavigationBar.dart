import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  var indexNum = 0;
  List Widgets = [
    Icon(Icons.home, size: 300, color: Colors.red[900]),
    Icon(Icons.chat, size: 300, color: Colors.black),
    Icon(Icons.person, size: 300, color: Colors.red[900]),
    Icon(Icons.phone, size: 300, color: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // APP BAR
        appBar: AppBar(
          //TITLE
          title: Text("Bottom Navigation Bar"),
          centerTitle: true,

          // BG COLOR
          backgroundColor: design,

          // LEADING
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),

          // ACTIONS
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],

          //SHAPE
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),

          //ELEVATION
          elevation: 10,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Chats",
                backgroundColor: Colors.red[900]),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Status",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: "Phone",
                backgroundColor: Colors.red[900])
          ],
          iconSize: 23,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          currentIndex: indexNum,
          onTap: (int index) {
            setState(() {
              indexNum = index;
            });
          },
        ),
        body: Center(
          child: Widgets.elementAt(indexNum),
        ));
  }
}