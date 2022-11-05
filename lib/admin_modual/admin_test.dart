import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_test extends StatefulWidget {
  const Admin_test({Key? key}) : super(key: key);

  @override
  State<Admin_test> createState() => _Admin_testState();
}

class _Admin_testState extends State<Admin_test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar takes a Text Widget
        // in it's title parameter
        title: const Text('Amin Panel'),
      ),

      // body: main_screen(),



    );
  }
}
