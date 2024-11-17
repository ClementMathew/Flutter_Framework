import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TITLE
        title: Text("Text"),
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
        child: Text("The First App",
            style: TextStyle(
                fontSize: 40,
                color: Colors.red[900],
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                letterSpacing: 5,
                wordSpacing: 10,
                backgroundColor: Colors.transparent,
                shadows: const [
                  Shadow(
                      color: Colors.black, offset: Offset(2, 2), blurRadius: 0)
                ])),
      ),
    );
  }
}