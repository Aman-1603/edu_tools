import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {

  //Now grabbing irebase instance
   FirebaseAuth _auth = FirebaseAuth.instance;
   GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  //Now it can directly talk to firebase


  // String _email, _password;
  // checkAuthentification() async
  // {
  //   _auth.onAuthStateChanged.listen(user){
  //     if(user!= null){
  //       Navigator.push(context, MaterialPageRoute(
  //           builder: (context)=>Homepage()));
  //     }
  //   }
  // }



  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
