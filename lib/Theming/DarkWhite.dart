import 'package:first_app/Theming/Color.dart';
import 'package:first_app/Theming/theme_manager.dart';
import 'package:flutter/material.dart';

import '../main.dart';


class DarkWhite extends StatefulWidget {
  const DarkWhite({Key? key}) : super(key: key);

  @override
  State<DarkWhite> createState() => _DarkWhiteState();
}

class _DarkWhiteState extends State<DarkWhite> {

  @override
  Widget build(BuildContext context) {

    TextTheme _textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        //TITLE
        title: Text("Theme"),
        centerTitle: true,

        // LEADING
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),

        // ACTIONS
        actions: [Switch(value: themeManager.themeMode == ThemeMode.dark, onChanged: (newValue) {
          themeManager.toggleTheme(newValue);
        })],

        //SHAPE
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),

        //ELEVATION
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [VSpace(100),
              Image.asset(
                'assets/images/profile.png',
                height: 200,
                width: 200,
              ),
              VSpace(20),
              Text("Your Name",style: _textTheme.headline6),
            // .copyWith(
            // color: Colors.black,fontWeight: FontWeight.bold),
              VSpace(10),
              Text('@yourusername',style: _textTheme.subtitle2,),
              VSpace(10),
              Text("This is a simple status"),
              VSpace(10),
              TextField(),
              VSpace(20),
              ElevatedButton(onPressed: () {}, child: Text("Just Click"))
            ],
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
      child: Icon(Icons.add,color: Colors.white,)),
    );
  }
}

Widget VSpace(double val){
  return SizedBox(
    height: val,
  );
}