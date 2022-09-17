import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
class Home_Lobby_Screen extends StatefulWidget {
  const Home_Lobby_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Lobby_Screen> createState() => _Home_Lobby_ScreenState();
}

class _Home_Lobby_ScreenState extends State<Home_Lobby_Screen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),

        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
       return  SliverToBoxAdapter(child: Container(padding: const EdgeInsets.all(20.0),

         //adding Box at top

         decoration: BoxDecoration(
           color: Color(0xFF473F97),
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(40.0),
             bottomRight: Radius.circular(40.0),

           )
         ),

         //now adding elemnts to this box in container

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('Hello Learner',
             textAlign: TextAlign.center,
             style: const TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold,
             ),
             ),
           ],

         ),


    )

       );
  }

  }