import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:first_app/Media/VideoPlayerWidget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../Theming/Color.dart';

class FilePlayerWidget extends StatefulWidget {
  const FilePlayerWidget({super.key});

  @override
  State<FilePlayerWidget> createState() => _FilePlayerWidgetState();
}

class _FilePlayerWidgetState extends State<FilePlayerWidget> {
  late VideoPlayerController controller;

  final File file = File('');


  @override
  void initState() {
    controller = VideoPlayerController.file(file)
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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //TITLE
          title: Text("Video File"),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              VideoPlayerWidget(
                controller: controller,
              ),
              buildAddButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() => Padding(
        padding: const EdgeInsets.all(32.0),
        child: ElevatedButton(
            onPressed: () async {
              final file = await pickVideoFile();
              if(file == null)return;
              controller = VideoPlayerController.file(file)
                ..addListener(() {
                  setState(() {});
                })
                ..setLooping(true)
                ..initialize().then((value) { controller.play();
                setState(() {

                });});
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: Text(
              "Select File",
              style: TextStyle(color: Colors.white),
            )),
      );
}

Future pickVideoFile() async {
  final result = await FilePicker.platform.pickFiles(type: FileType.video);
  if (result == null) return null;

  return File(result.files.single.path??"");
}