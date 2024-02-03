import 'package:flutter/material.dart';

import '../Theming/Color.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TITLE
        title: Text("Grid View"),
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
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                mainAxisExtent: 100),
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(10),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Grid View Builder",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
          ),
          GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              reverse: true,
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 2,
                  mainAxisExtent: 100,
                  childAspectRatio: 2 / 5),
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(10),
                    child: Center(
                        child: Text(
                      "$index",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  ))
        ],
      ),
    );
  }
}