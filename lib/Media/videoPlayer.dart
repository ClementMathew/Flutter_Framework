import 'package:first_app/Media/VideoPlayerWidget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../Theming/Color.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/video/1.mp4')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => controller.play());
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = controller.value.volume == 0;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            //TITLE
            title: Text("Video Player"),
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
          VideoPlayerWidget(
            controller: controller,
          ),
          SizedBox(
            height: 32,
          ),
          if (controller != null && controller.value.isInitialized)
            ElevatedButton(
              onPressed: () {
                controller.setVolume(isMuted?1:0);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: isMuted ?Text(
                "UnMute",
                style: TextStyle(color: Colors.white),
              ):Text(
                "Mute",
                style: TextStyle(color: Colors.white),
              ),
            )
      ],
    ),
        ));
  }
}