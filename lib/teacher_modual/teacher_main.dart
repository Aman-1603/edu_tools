import 'package:edu_tools/teacher_modual/design_message.dart';
import 'package:edu_tools/teacher_modual/topbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class teacher_home extends StatefulWidget {
  const teacher_home({Key? key}) : super(key: key);

  @override
  State<teacher_home> createState() => _teacher_homeState();
}

class _teacher_homeState extends State<teacher_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(children: [
        topbox(),
        Expanded(child: design_message()),
      ],),
    );
  }
}
