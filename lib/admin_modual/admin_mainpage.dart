import 'package:edu_tools/screen/main_screen.dart';
import 'package:edu_tools/teacher_modual/posts_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/auth_methods.dart';
import 'griddashboard.dart';

class Admin_mainpage extends StatefulWidget {
  const Admin_mainpage({Key? key}) : super(key: key);


  @override
  State<Admin_mainpage> createState() => _Admin_mainpageState();
}

class _Admin_mainpageState extends State<Admin_mainpage> {

  //displaying name to user
  final AuthMethods _authMethods = AuthMethods();
  late TextEditingController nameController;

  @override
  void initState() {
    nameController = TextEditingController(
      text: _authMethods.user.displayName,
    );

    super.initState();
  }


  //upto here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: const Icon(
        CupertinoIcons.arrow_left,
        color: Colors.white,

        size: 28,
    ), onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => main_screen()));
        },
        ),
        // AppBar takes a Text Widget
        // in it's title parameter
        // title: const Text('Admin Panel'),
        elevation: 0,
        title: const Text('Admin Panel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
      ),

      backgroundColor: Color(0xff392850),
      body: Column(

        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                     nameController.text,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Admin Mode",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/notification.png",
                    width: 24,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => posts_screen()));
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

         Expanded(child: GridDashboard())
        ],
      ),
    );
  }
}
