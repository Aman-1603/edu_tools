import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class topbox extends StatefulWidget {
  const topbox({Key? key}) : super(key: key);

  @override
  State<topbox> createState() => _topboxState();
}

class _topboxState extends State<topbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 50),
      child: Row(
        children: [
          Text("Post Message to Students",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white,),),
        ],
      ),
    );
  }
}
