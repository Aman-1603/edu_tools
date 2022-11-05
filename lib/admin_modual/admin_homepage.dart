import 'package:edu_tools/screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin_page extends StatefulWidget {
  const Admin_page({Key? key}) : super(key: key);



  @override
  State<Admin_page> createState() => _Admin_pageState();
}

class _Admin_pageState extends State<Admin_page> {
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
