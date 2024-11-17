import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class TextfieldPage extends StatelessWidget {
  const TextfieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //TITLE
          title: Text("Text Field"),
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: ListView(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Text field",
                      hintText: "Type here",
                      prefixIcon: Icon(Icons.account_circle),
                      suffixIcon: Icon(Icons.verified)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Text field",
                        hintText: "Type here",
                        prefixText: "Mr.",
                        suffixText: "Hello"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Text field",
                        hintText: "Type here",
                        helperText: "Enter something man",
                        hintStyle: TextStyle(
                            color: design,
                            fontSize: 10,
                            fontStyle: FontStyle.italic),
                        labelStyle: TextStyle(
                          color: design,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Password"),
                    maxLength: 10,
                    obscureText: true,
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Username",
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: TextField(
                    cursorColor: Colors.white,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.red[900],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}