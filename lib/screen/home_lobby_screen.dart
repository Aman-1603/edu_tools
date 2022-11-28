import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edu_tools/TODOS/todohome.dart';
import 'package:edu_tools/admin_modual/admin_mainpage.dart';
import 'package:edu_tools/resources/UserModel.dart';
import 'package:edu_tools/screen/home_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


import '../metting/NavBar.dart';
import '../resources/auth_methods.dart';
import '../widgets/custom_app_bar.dart';

int passingdata = 0;
class Home_Lobby_Screen extends StatefulWidget {
  const Home_Lobby_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Lobby_Screen> createState() => _Home_Lobby_ScreenState();
}

class _Home_Lobby_ScreenState extends State<Home_Lobby_Screen> {

  //adding here to show name of the user

  //displaying name to user
  final AuthMethods _authMethods = AuthMethods();
  late TextEditingController nameController;
  late TextEditingController semesterController;

  @override
  void initState() {
    nameController = TextEditingController(
      text: _authMethods.user.displayName,
    );

    super.initState();
  }

  //upto these


  @override
  Widget build(BuildContext context) {
    CollectionReference ref = FirebaseFirestore.instance.collection('users');



    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(


      //adding

      //finish

      drawer: HomeNavBar(),
      // appBar: CustomAppBar(),
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        title: const Text('Edutools',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,


        //adding admin iocn
        actions: <Widget>[


          IconButton(

            icon: Icon(
              Icons.admin_panel_settings,
              color: Colors.white,

            ),

            onPressed: ()async{
              // do something
             await FirebaseFirestore.instance.collection("users").doc("bIx8oTsJ82cXbruTpyVWoe4qDgj1").snapshots().forEach((element){
                if(element.data()?['wrool']=="Teacher") {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Admin_mainpage(),
                      ));
                }else{
                  Fluttertoast.showToast(
                    msg: "Sorry you cannot access it",
                  );
                } });
          },
          )



        ],



      ),



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
           //color: Color(0xFF473F97),
             color: Colors.indigoAccent,
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(40.0),
             bottomRight: Radius.circular(40.0),

           )
         ),

         //now adding elemnts to this box in container

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[

             Text('Hello ' + nameController.text,
             textAlign: TextAlign.center,
             style: const TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold,
             ),
             ),
             Text("Current Semester is ",style: const TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,
             ),)

           ],

         ),

    )
       );

  }


  }