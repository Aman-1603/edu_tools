import 'package:edu_tools/screen/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:edu_tools/app_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './views/pages.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

bool? seenOnboard;

Future<void> main() async {

  //added future

  WidgetsFlutterBinding.ensureInitialized();

  //added below line

  await Firebase.initializeApp();


  // to show status bar
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  // to load onboard for the first time only
  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnboard = pref.getBool('seenOnboard') ?? false; //if null set to false

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {

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
      home: seenOnboard == true ? SignUpPage() : OnBoardingPage(),
      // home: main_screen(),
    );

  }


}
