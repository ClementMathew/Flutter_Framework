
import 'package:first_app/Animation/animated.dart';
import 'package:first_app/GetX/Unnamed_Navigation.dart';
import 'package:first_app/Media/file_player_widget.dart';
import 'package:first_app/Media/network_player_widget.dart';
import 'package:first_app/Media/videoPlayer.dart';
import 'package:first_app/More%20Widgets/expansion_tile.dart';
import 'package:first_app/More%20Widgets/grid_view.dart';
import 'package:first_app/More%20Widgets/list_view.dart';
import 'package:first_app/Theming/Color.dart';
import 'package:first_app/Theming/DarkWhite.dart';
import 'package:first_app/BasicWidgets/Button.dart';
import 'package:first_app/BasicWidgets/Checkbox.dart';
import 'package:first_app/BasicWidgets/CircleAvatar.dart';
import 'package:first_app/Assets/Image.dart';
import 'package:first_app/BasicWidgets/RadioButton.dart';
import 'package:first_app/Social/SocialCard.dart';
import 'package:first_app/StateFul.dart';
import 'package:first_app/BasicWidgets/Text.dart';
import 'package:first_app/BasicWidgets/Text_Field.dart';
import 'package:first_app/BasicWidgets/Container.dart';
import 'package:first_app/Assets/svg.dart';
import 'package:flutter/material.dart';

import '../Firebase/Firebase.dart';
import '../Media/audioPlay.dart';
import '../More Widgets/AbsorbPointer.dart';
import '../More Widgets/BottomNavigationBar.dart';
import '../More Widgets/Card.dart';
import '../More Widgets/FloatingActionButton.dart';
import '../More Widgets/TabBar.dart';

class MyWidget2 extends StatelessWidget {
  const MyWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // APP BAR
        appBar: AppBar(
          //TITLE
          title: Text("The First App"),
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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                                builder: (context) => const MyWidget()));
                    },
                    child: Container(
                      //BACK
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.center,
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Text",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ButtonPage()));
                      },
                      child: Container(
                        // BUTTON
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: design,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Button",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TextfieldPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Text Field",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ImagePage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Image",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CardPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Card",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CircularAvatarPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Cir. Avtar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SocialPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Social",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StatefulPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Stateful",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CheckboxPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Checkbox",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavigationBarPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Btm Bar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FloatingActionPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          "Float Action",textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TabBarPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Tab Bar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RadioButtonPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Radio Btn",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirebasePage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(17),
                        child: Text(
                          "Fire base",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AbsorbPointerPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Absorb Pointer",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SVG()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "SVG",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DarkWhite()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(17),
                        child: Text(
                          "Dark White",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Audio()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Audio",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Video()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Video",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilePlayerWidget()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(17),
                        child: Text(
                          "Video from File",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NetworkPlayerWidget()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Video Network",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GridViewPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Grid View",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListViewPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(17),
                        child: Text(
                          "List View",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ExpansionTilePage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Expansion Tile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimatedPage()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Animated Page",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UnNamedGetX()));
                    },
                    child: Container(
                      // TEXT
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: design,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(17),
                        child: Text(
                          "Un Named GetX",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}