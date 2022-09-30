import 'package:edu_tools/palette.dart';
import 'package:edu_tools/screen/home_nav_bar.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget{
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState(); 

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: palette.primaryColor,
      elevation: 0.0,

        //adding menu icons

        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 28.0,
            onPressed: (){
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeNavBar()));
            },
        ),


      // adding app name

      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('             EduTools',
            textAlign: TextAlign.center,

            style: const TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),

      // adding profile icons


      actions: <Widget>[
          IconButton(
          icon: const Icon(Icons.notifications),
          iconSize: 28.0,
          onPressed: (){},
        ),
      ],
    );
  }
}
