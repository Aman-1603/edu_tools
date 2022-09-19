import 'package:edu_tools/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class design_message extends StatefulWidget {
  const design_message({Key? key}) : super(key: key);

  @override
  State<design_message> createState() => _design_messageState();
}

class _design_messageState extends State<design_message> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(25, 30, 25, 80),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              child: Stack(children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.2),
                    filled: true,
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: 'Type your message to post....',

                    hintStyle: TextStyle(
                      color: CupertinoColors.darkBackgroundGray.withOpacity(0.3),
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    )

                  ),
                ),
                Positioned(
                  right: 8,
                  bottom: 8,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.send, color: Colors.white,size: 20,),
                  ),
                )
              ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
