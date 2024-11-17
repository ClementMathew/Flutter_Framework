import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Theming/Color.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  String? selectedLetter;
  static CollectionReference test =
      FirebaseFirestore.instance.collection('test');

  TextEditingController testName = TextEditingController();
  TextEditingController testPhone = TextEditingController();

  void addUser() {
    final data = {
      'name': testName.text,
      'phone': testPhone.text,
      'letter': selectedLetter
    };
    test.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Users"),
        centerTitle: true,
        backgroundColor: design,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
            child: TextField(
              controller: testName,
              decoration: InputDecoration(
                  labelText: "User Name",
                  labelStyle: TextStyle(color: design),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
            child: TextField(
              controller: testPhone,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(color: design),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: DropdownButtonFormField(
                decoration: InputDecoration(
                  label: Text("Select First Letter"),
                ),
                borderRadius: BorderRadius.circular(20),
                autofocus: true,
                items: letters
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {
                  selectedLetter = value as String?;
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50,15,50,0),
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(design),
                    minimumSize: MaterialStateProperty.all(Size(100, 50)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))),
                onPressed: () {
                  if (selectedLetter != null &&
                      testName.text != "" &&
                      testPhone.text != "") {
                    addUser();
                    Navigator.pop(context);
                  }
                },
                child: Text("Submit")),
          ),
        ],
      ),
    );
  }
}