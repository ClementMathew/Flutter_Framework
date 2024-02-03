import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatelessWidget {
  const AbsorbPointerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TITLE
        title: Text("Absorb Pointer"),
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
        body: const Center(
          child: MyStatelessWidget(),
        ),
      );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        SizedBox(
          width: 300.0,
          height: 200.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () {},
            child: null,
          ),
        ),
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: AbsorbPointer(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900],
              ),
              onPressed: () {},
              child: null,
            ),
          ),
        ),
      ],
    );
  }
}