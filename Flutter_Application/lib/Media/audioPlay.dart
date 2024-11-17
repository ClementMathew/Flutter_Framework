import 'package:audioplayers/audioplayers.dart';
import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class Audio extends StatelessWidget {
  const Audio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player2 = AudioPlayer();

    return Scaffold(
      appBar: AppBar(
        //TITLE
        title: Text("Audio"),
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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('audio/1.m4a'));
            },
            child: Text("Click to Play Arun Bouss"),
          ),
          ElevatedButton(
            onPressed: () {
              player2.play(AssetSource('audio/2.m4a'));
            },
            child: Text("Play Song"),
          ),
          ElevatedButton(
            onPressed: () {
              player2.stop();
            },
            child: Text("Stop Song"),
          ),ElevatedButton(
            onPressed: () {
              player2.pause();
            },
            child: Text("Pause Song"),
          ),ElevatedButton(
            onPressed: () {
              player2.resume();
            },
            child: Text("Resume Song"),
          ),
        ],
      )),
    );
  }
}