import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class studentList extends StatefulWidget {
  @override
  _studentListState createState() => _studentListState();
}

class _studentListState extends State<studentList> {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .collection('users')
      .where('wrool', isEqualTo: 'Student')
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
      ),
      body: StreamBuilder(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("something is wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3,
                          right: 3,
                        ),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          tileColor: Colors.indigo,
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          leading: Icon(Icons.light),
                          title: Text(
                            "Email : " + snapshot.data!.docChanges[index].doc['email'] + "\n" + " Name : " + snapshot.data!.docChanges[index].doc['studentname']
                            + "\n" + "Password : " + snapshot.data!.docChanges[index].doc['pass'] + "\n" + "Semester : " + snapshot.data!.docChanges[index].doc['sem'],

                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          // subtitle: Text(
                          //   "Name : " + snapshot.data!.docChanges[index].doc['studentname'],
                          //
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //   ),
                          // ),


                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}