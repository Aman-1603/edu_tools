import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Start_Screen extends StatefulWidget {
  const Start_Screen({Key? key}) : super(key: key);

  @override
  State<Start_Screen> createState() => _Start_ScreenState();
}

class _Start_ScreenState extends State<Start_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[

            //we use sizebox for top spacing

            SizedBox(height: 35.0),
            Container(
              height: 350,
              //now importing the image

              child: Image(image: AssetImage("images/home_login_signup.png"),
              fit: BoxFit.contain,
              ),
            ),
           
            RichText(
                text: TextSpan(
                    text: 'Welcome to ', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,
                    color: Colors.black),
                    children: <TextSpan>[
                   TextSpan(
                     text: 'Edutools',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange)
                   )
                 ]
             )
            ),

            //that is space difference between both text
            SizedBox(height: 10.0),

            Text('Take a First Step to deep dive in to Study', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

            SizedBox(height: 20.0),

            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // RaisedButton(
                //   padding: EdgeInsets.only(left: 30.0,right: 30.0,top: 10.0,bottom: 10.0),
                //   onPressed: (){},
                // child: Text('LOGIN',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),
                //
                // ),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),
                //   color: Colors.orange,
                // ),


                SizedBox(width: 20.0),

                //another button named Register Button
                //Register Button

               ElevatedButton(
                  // padding: EdgeInsets.only(left: 30.0,right: 30.0,top: 10.0,bottom: 10.0),
                  onPressed: (){},
                  child: Text('REGISTER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),

                  ),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(10.0),
                  // ),
                  // color: Colors.orange,
                ),

              ],
            ),

            SizedBox(height: 20.0),

            //Adding Google Signing Button in Column

            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () {},
            )


          ],
        ),
      ),
    );
  }
}

