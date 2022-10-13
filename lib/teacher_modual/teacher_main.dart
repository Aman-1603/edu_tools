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
     backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        title: const Text('Send Your Message To students',),
        centerTitle: true,

        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back,size: 30,),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert,size: 30,),
          ),
        ],
      ),

        body: Container(

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),

        ),
    );
  }
}



