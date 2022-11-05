import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_styles.dart';
import 'BottomNavScreen.dart';

class main_screen extends StatefulWidget {
  const main_screen({Key? key}) : super(key: key);

  @override
  State<main_screen> createState() => _main_screenState();

}

class _main_screenState extends State<main_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Edutools',

      theme: ThemeData(
        textTheme: GoogleFonts.manropeTextTheme(
          Theme.of(context).textTheme,
        ),

        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: kScaffoldBackground,
      ),

      home: BottomNavScreen(),

    );

  }
}
