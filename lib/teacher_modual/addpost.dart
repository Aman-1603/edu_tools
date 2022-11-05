import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edu_tools/teacher_modual/posts_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_styles.dart';

class addnote extends StatelessWidget {
  TextEditingController title = TextEditingController();

  CollectionReference ref = FirebaseFirestore.instance.collection('posts');

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.pencil_outline,
            color: Colors.black,
            size: 28,
          ),
          onPressed: () {

            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => posts_screen()));

          },
        ),

        title: Text('Send Message ..',),
        centerTitle: true,
        titleTextStyle: kTitle2,

        actions: [
          MaterialButton(
            onPressed: () {
              ref.add({
                'title': title.text,
              }).whenComplete(() {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => posts_screen()));
              });
            },
            child: Text(
              "Post",
              style: kTitle2,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: TextField(
                  style: kTitle2,
                  controller: title,
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Please Post Your message Here ......',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}