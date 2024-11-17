import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  String str = "Touch";
  String str2 = "Long Press";

  void changeText() {
    setState(() {
      str2 = "Clicked";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //TITLE
          title: Text("Button"),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                      foregroundColor:
                          MaterialStateProperty.all(design
                          )),
                  onPressed: () {
                    str = "Clicked";
                    setState(() {});
                  },
                  child: Text(
                    str,
                    // style: TextStyle(
                    //     color: Colors.red[900],
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 30),
                  )),
              TextButton.icon(
                label: Text(str2),
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                    foregroundColor:
                        MaterialStateProperty.all(design)),
                onPressed: () {
                  changeText();
                },
                onLongPress: () {
                  str2 = "Its too much";
                  setState(() {});
                },
                icon: Icon(Icons.add_alert),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          left: 50, right: 50, top: 15, bottom: 15)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all(design),
                      minimumSize: MaterialStateProperty.all(Size(200, 50)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))),
                  onPressed: () {},
                  child: Text("Elevated Button")),
              OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      side: MaterialStateProperty.all(
                          BorderSide(color: design, width: 3)),
                      foregroundColor:
                          MaterialStateProperty.all(design),
                      minimumSize: MaterialStateProperty.all(Size(200, 50)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 19))),
                  onPressed: () {},
                  child: Text("Outlined Button")),
            ],
          ),
        ));
  }
}