import 'package:edu_tools/teacher_modual/addpost.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridDashboard extends StatelessWidget {
  const GridDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          InkWell(
            onTap: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => addnote()));
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.05),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/post_message.png',
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Post Message",style: TextStyle(color: Colors.white,fontSize: 20),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => addnote()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.05),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/calendar.png',
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Calendar",style: TextStyle(color: Colors.white,fontSize: 20),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.05),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/todo.png',
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("todo",style: TextStyle(color: Colors.white,fontSize: 20),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.05),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Image.asset("assets/calendar.png"),
                  // Icon(Icons.book,size: 40,color: Colors.white,),
                  Image.asset(
                    'assets/profile.png',
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),)
                ],),
            ),
          ),

          InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.05),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Image.asset("assets/calendar.png"),
                  // Icon(Icons.book,size: 40,color: Colors.white,),
                  Image.asset(
                    'assets/syllabus.png',
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Syllabus",style: TextStyle(color: Colors.white,fontSize: 20),)
                ],),
            ),
          ),

          InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.05),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Image.asset("assets/calendar.png"),
                  // Icon(Icons.book,size: 40,color: Colors.white,),
                  Image.asset(
                    'assets/setting.png',
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Setting",style: TextStyle(color: Colors.white,fontSize: 20),)
                ],),
            ),
          ),

        ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
        ),
      ),),
    );
  }
}
