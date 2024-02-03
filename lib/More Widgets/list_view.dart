import 'package:flutter/material.dart';

import '../Theming/Color.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({super.key});

  final List story = ['Story 1', 'Story 2', 'Story 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TITLE
        title: Text("List View"),
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
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 50,
                      color: Colors.red[900],
                    ),
                  );
                }),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    color: Colors.red[900],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    color: Colors.red[900],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    color: Colors.red[900],
                  ),
                ),
              ],
            ),
          ),Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "List View Builder",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 80,
                      color: Colors.black,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}