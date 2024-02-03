import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({Key? key}) : super(key: key);

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  var color1 = Colors.red[900];
  var color2 = Colors.black;
  var color3 = Colors.white;

  void changeClr() {
    setState(() {
      var temp = color1;
      color1 = color2;
      color2 = temp!;
    });
  }

  void changeClrLike() {
    setState(() {
      if (color3 == Colors.white) {
        color3 = Colors.black;
      } else if (color3 == Colors.black) {
        color3 = Colors.red[900]!;
      } else {
        color3 = Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                changeClr();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color2),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                  minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, double.infinity))),
              child: null,
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                changeClrLike();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color3),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                  minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, double.infinity))),
              child: null,
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                changeClr();
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                  backgroundColor: MaterialStateProperty.all(color1),
                  minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, double.infinity))),
              child: null,
            ),
          )
        ],
      )),
    );
  }
}