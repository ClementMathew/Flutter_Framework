import 'package:flutter/material.dart';

import '../Theming/Color.dart';

class ExpansionTilePage extends StatefulWidget {
  const ExpansionTilePage({super.key});

  @override
  State<ExpansionTilePage> createState() => _ExpansionTilePageState();
}

class _ExpansionTilePageState extends State<ExpansionTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TITLE
        title: Text("Expansion Tile"),
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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],

        //SHAPE
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),

        //ELEVATION
        elevation: 10,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.red[900],
              child: ExpansionTile(
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                collapsedBackgroundColor: Colors.black,
                expandedCrossAxisAlignment: CrossAxisAlignment.end,
                childrenPadding: EdgeInsets.all(20),
                title: Text(
                  "Hello User",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                children: const [
                  Text("Good Bye !! See you Later",style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.red[900],
              child: ExpansionTile(
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                collapsedBackgroundColor: Colors.black,
                expandedCrossAxisAlignment: CrossAxisAlignment.end,
                childrenPadding: EdgeInsets.all(20),
                title: Text(
                  "Hello User",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                children: const [
                  Text("Good Bye !! See you Later",style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.red[900],
              child: ExpansionTile(
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                collapsedBackgroundColor: Colors.black,
                expandedCrossAxisAlignment: CrossAxisAlignment.end,
                childrenPadding: EdgeInsets.all(20),
                title: Text(
                  "Hello User",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                children: const [
                  Text("Good Bye !! See you Later",style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}