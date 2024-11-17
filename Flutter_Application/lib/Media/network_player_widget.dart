import 'package:first_app/Media/VideoPlayerWidget.dart';
import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../Theming/Color.dart';

class NetworkPlayerWidget extends StatefulWidget {
  const NetworkPlayerWidget({super.key});

  @override
  State<NetworkPlayerWidget> createState() => _NetworkPlayerWidgetState();
}

class _NetworkPlayerWidgetState extends State<NetworkPlayerWidget> {
  final textController = TextEditingController(text: urlLandScapeVideo);
  late VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.network(textController.text)
      ..addListener(() {
        setState(() {});
      })
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
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            //TITLE
            title: Text("Video Network"),
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
          body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                VideoPlayerWidget(controller: controller),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                        labelText: "Enter Video Link",
                        labelStyle: TextStyle(color: design),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            BorderSide(color: design, width: 3)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            BorderSide(color: design, width: 2))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      if (textController.text.trim().isEmpty) return;

                      controller = VideoPlayerController.network(
                          textController.text)
                        ..addListener(() {
                          setState(() {});
                        })
                        ..setLooping(true)
                        ..initialize()
                            .then((value) => setState(() => controller.play()));
                    },
                    child: Text(
                      "Done",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      );
}