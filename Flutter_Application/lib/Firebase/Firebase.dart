import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app/Theming/Color.dart';
import 'package:flutter/material.dart';

import 'AddUser.dart';
import 'UpdateUser.dart';

class FirebasePage extends StatelessWidget {
  const FirebasePage({Key? key}) : super(key: key);

  static CollectionReference test =
      FirebaseFirestore.instance.collection('test');

  void deleteUser(docId) {
    test.doc(docId).delete();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/update': (context) => UpdateUser(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Firebase"),
          centerTitle: true,
          backgroundColor: design,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddUser()));
            },
            backgroundColor: design,
            child: Icon(
              Icons.add,
              size: 40,
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: StreamBuilder(
          stream: test.orderBy('name').snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot testSnap = snapshot.data.docs[index];
                  return Padding( 
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 5),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300]!,
                                spreadRadius: 10,
                                blurRadius: 10)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 25,
                              child: Text(testSnap['letter'],
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(testSnap['name'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(height: 5),
                              Text(
                                testSnap['phone'].toString(),
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/update',
                                      arguments: {
                                        'name': testSnap['name'],
                                        'phone': testSnap['phone'].toString(),
                                        'letter': testSnap['letter'],
                                        'id': testSnap.id
                                      });
                                },
                                icon: Icon(Icons.edit),
                                iconSize: 25,
                                color: Colors.blue,
                              ),
                              IconButton(
                                onPressed: () {
                                  deleteUser(testSnap.id);
                                },
                                icon: Icon(Icons.delete),
                                iconSize: 25,
                                color: Colors.red[900],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}