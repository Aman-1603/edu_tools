import 'package:edu_tools/Attendance/attendance_main.dart';
import 'package:edu_tools/admin_modual/Teacher.dart';
import 'package:edu_tools/screen/UserProfile.dart';
import 'package:edu_tools/teacher_modual/addpost.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Teacher.dart';

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
                  context, MaterialPageRoute(builder: (context)=>Home()));
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
                  Text("Attendance",style: TextStyle(color: Colors.white,fontSize: 20),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>profilepage()));
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
            onTap: ()
            {

              Navigator.push(context, MaterialPageRoute(builder: (context)=> Teacher(id: 'TNH89AeTUiaaS5cAPPecGTzyugm2',)));
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
                  Text("Teacher",style: TextStyle(color: Colors.white,fontSize: 20),)
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



class AdvanceCustomAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0)
        ),
        child: Stack(
          clipBehavior: Clip.none, alignment: Alignment.topCenter,
          children: [
            Container    (
              height: 200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Column(
                  children: [
                    Text('Warning !!!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    SizedBox(height: 5,),
                    Text('You can not access this file', style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: () {





                    },
                        style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),),
                        child: Text(' Elevated Button'))
                  ],
                ),
              ),
            ),
            Positioned(
                top: -60,
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 60,
                  child: Icon(Icons.assistant_photo, color: Colors.white, size: 50,),
                )
            ),
          ],
        )
    );
  }
}




//use these for alert box

// showDialog(context: context,
// builder: (BuildContext context) {
// return AdvanceCustomAlert();
//
// });