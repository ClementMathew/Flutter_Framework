import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: AppBar(
        //TITLE
        title: Text("Card"),
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                  color: design,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text("First One"),
                    leading: Icon(Icons.person_add),
                    subtitle: Text("First Person Detected"),
                    trailing: Icon(Icons.access_alarm),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                  color: design,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text("Second One"),
                    leading: Icon(Icons.person_add),
                    subtitle: Text("Second Person Detected"),
                    trailing: Icon(Icons.access_alarm),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                  color: design,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text("Third One"),
                    leading: Icon(Icons.person_add),
                    subtitle: Text("Third Person Detected"),
                    trailing: Icon(Icons.access_alarm),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                  color: design,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text("Fourth One"),
                    leading: Icon(Icons.person_add),
                    subtitle: Text("Fourth Person Detected"),
                    trailing: Icon(Icons.access_alarm),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                  color: design,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text("Fifth One"),
                    leading: Icon(Icons.person_add),
                    subtitle: Text("Fifth Person Detected"),
                    trailing: Icon(Icons.access_alarm),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                  color: design,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text("Sixth One"),
                    leading: Icon(Icons.person_add),
                    subtitle: Text("Sixth Person Detected"),
                    trailing: Icon(Icons.access_alarm),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                  color: design,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text("Seventh One"),
                    leading: Icon(Icons.person_add),
                    subtitle: Text("Seventh Person Detected"),
                    trailing: Icon(Icons.access_alarm),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Card(
                  color: design,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text("Eighth One"),
                    leading: Icon(Icons.person_add),
                    subtitle: Text("Eighth Person Detected"),
                    trailing: Icon(Icons.access_alarm),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}