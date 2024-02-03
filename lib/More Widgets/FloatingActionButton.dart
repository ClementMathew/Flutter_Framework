import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class FloatingActionPage extends StatefulWidget {
  const FloatingActionPage({Key? key}) : super(key: key);

  @override
  State<FloatingActionPage> createState() => _FloatingActionPageState();
}

class _FloatingActionPageState extends State<FloatingActionPage> {
  String str = "Test";

  void floatAlarm() {
    setState(() {
      str = "Alarm";
    });
  }

  void floatAddPhoto() {
    setState(() {
      str = "Photo";
    });
  }

  void floatShare() {
    setState(() {
      str = "Share";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: AppBar(
        //TITLE
        title: Text("Floating Action Button"),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Text(str,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 120,
                    fontFamily: "Lobster",
                    letterSpacing: 7)),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: FloatingActionButton(
                heroTag: "Alarm",
                tooltip: "Alarm",
                onPressed: () {
                  floatAlarm();
                },
                foregroundColor: Colors.white,
                backgroundColor: Colors.red[900],
                child: Icon(Icons.access_alarms_sharp)),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: FloatingActionButton(
                heroTag: "Add Photo",
                tooltip: "Add a photo",
                mini: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  floatAddPhoto();
                },
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                child: Icon(Icons.add_a_photo)),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: FloatingActionButton.extended(
              heroTag: "Share",
              tooltip: "Share",
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                floatShare();
              },
              foregroundColor: Colors.white,
              backgroundColor: Colors.red[900],
              label: Text("Share"),
              icon: Icon(Icons.share),
            ),
          )
        ],
      ),
    );
  }
}