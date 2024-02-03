import 'package:flutter/material.dart';

import '../Theming/Color.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // APP BAR
        appBar: AppBar(
          //TITLE
          title: Text("Social"),
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

          //ELEVATION
          elevation: 10,
        ),
        body: ListView(
          children: [
            Card(
              elevation: 8,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Column(
                children: [
                  ListTile(
                    title: Text("First Person",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("23 minutes ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/1.jpg'),
                    ),
                    trailing: Icon(Icons.add_call),
                  ),
                  Image.asset("assets/images/2.jpg"),
                  ListTile(
                    title: Text("Dragon is the real dragon..."),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
                    ],
                  )
                ],
              ),
            ),
            Card(
              elevation: 8,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Column(
                children: [
                  ListTile(
                    title: Text("First Person",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("12 minutes ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/1.jpg'),
                    ),
                    trailing: Icon(Icons.add_call),
                  ),
                  Image.asset("assets/images/1.jpg"),
                  ListTile(
                    title: Text("My first wallpaper ....."),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}