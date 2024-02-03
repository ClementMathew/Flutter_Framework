import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

class UpdateUser extends StatefulWidget {
  const UpdateUser({Key? key}) : super(key: key);

  @override
  State<UpdateUser> createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
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

  void updateUser(docId) {
    final data = {
      'name': testName.text,
      'phone': testPhone.text,
      'letter': selectedLetter
    };
    test.doc(docId).update(data);
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    testName.text = args['name'];
    testPhone.text = args['phone'];
    selectedLetter = args['letter'];
    final docId = args['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text("Update User"),
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
                value: selectedLetter,
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
                  updateUser(docId);
                  Navigator.pop(context);
                },
                child: Text("Update")),
          ),
        ],
      ),
    );
  }
}