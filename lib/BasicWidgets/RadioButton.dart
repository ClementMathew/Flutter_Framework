import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({Key? key}) : super(key: key);

  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  String? car;
  String? gender;
  String? status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: AppBar(
        //TITLE
        title: Text("Radio Button"),
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Select your gender : ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Radio(
                activeColor: Colors.red[900],
                value: 'male',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value as String?;
                  });
                }),
            title: Text(
              "Male",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Radio(
                activeColor: Colors.red[900],
                value: 'female',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value as String?;
                  });
                }),
            title: Text(
              "Female",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Radio(
                activeColor: Colors.red[900],
                value: 'other',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value as String?;
                  });
                }),
            title: Text(
              "Other",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Select your car : ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            trailing: Radio(
                activeColor: Colors.red[900],
                value: 'lancer',
                groupValue: car,
                onChanged: (value) {
                  setState(() {
                    car = value as String?;
                  });
                }),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(
                "Lancer",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ListTile(
            trailing: Radio(
                activeColor: Colors.red[900],
                value: 'scorpio',
                groupValue: car,
                onChanged: (value) {
                  setState(() {
                    car = value as String?;
                  });
                }),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(
                "Scorpio",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Select marital status : ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          RadioListTile(
              activeColor: Colors.red[900],
              title: Text("Married",
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              value: 'married',
              groupValue: status,
              onChanged: (value) {
                setState(() {
                  status = value as String?;
                });
              }),
          RadioListTile(
              activeColor: Colors.red[900],
              title: Text("Unmarried",
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              value: 'unmarried',
              groupValue: status,
              onChanged: (value) {
                setState(() {
                  status = value as String?;
                });
              }),
          Text(
            "$status",
            style: TextStyle(fontFamily: "Lobster", fontSize: 30),
          )
        ],
      ),
    );
  }
}