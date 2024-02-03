import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

import 'RowColumn.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: AppBar(
        //TITLE
        title: Text("The First App"),
        centerTitle: true,

        // BG COLOR
        backgroundColor: design,

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
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red[900]),
              accountName: Text("Clement Mathew"),
              accountEmail: Text("clementmathew@gmail.com"),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: AssetImage("assets/Test.png")),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text("Profile",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.chat, color: Colors.white),
              title: Text("Feedback",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text("Settings",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.white),
              title: Text("Signout",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Center(
          child: Container(
        // color: Colors.red,
        height: double.infinity,
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.red[900],
            border: Border.all(color: Colors.black, width: 5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, offset: Offset(5, 5), blurRadius: 10)
            ]),
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyWidget2()));
          },
          child: Text(
            "Let's_make_the_First_App",
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                wordSpacing: 10,
                letterSpacing: 7,
                shadows: const [Shadow(color: Colors.black, blurRadius: 10)]),
          ),
        ),
      )),
    );
  }
}