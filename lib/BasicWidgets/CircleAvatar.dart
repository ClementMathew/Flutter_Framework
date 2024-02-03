import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class CircularAvatarPage extends StatelessWidget {
  const CircularAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // APP BAR
        appBar: AppBar(
          //TITLE
          title: Text("Circular Avatar"),
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
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Color.fromARGB(500, 183, 28, 28),
                    foregroundColor: Colors.white,
                    child: Text("Click",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.add, size: 50, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: CircleAvatar(
                    radius: 85,
                    backgroundColor: Color.fromARGB(500, 183, 28, 28),
                    backgroundImage: AssetImage('assets/images/1.jpg')),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: design,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9ocDbWtowooSsAckvU-4jMVDJrIraO6zSBg&usqp=CAU'),
                ),
              ),
            ],
          ),
        ));
  }
}