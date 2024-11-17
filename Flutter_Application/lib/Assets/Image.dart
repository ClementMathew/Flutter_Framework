import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // APP BAR
        appBar: AppBar(
          //TITLE
          title: Text("Image"),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 200,
                  color: design,
                  child: Image.asset(
                    'assets/images/1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 200,
                  color:design,
                  child: Image.asset(
                    'assets/images/2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  height: 250,
                  color: design,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9ocDbWtowooSsAckvU-4jMVDJrIraO6zSBg&usqp=CAU',
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}