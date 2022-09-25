import 'package:edu_tools/Home.dart';
import 'package:edu_tools/screen/home_lobby_screen.dart';
import 'package:edu_tools/screen/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../app_styles.dart';
import '../../size_configs.dart';
import '../../widgets/buttons/custom_button.dart';
import '../pages.dart';
import '../../widgets/widgets.dart';

import 'package:edu_tools/resources/auth_methods.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _signUpKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _name, _email, _password;

  // string for displaying the error Message
  String? errorMessage;

  void onSubmit() {
    _signUpKey.currentState!.validate();
  }

  List<FocusNode> _signUpFocusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    super.initState();
    _signUpFocusNodes.forEach((element) {
      element.addListener(() {
        setState(() {});
      });
    });
  }

  //added

  //for login signup using google
  final AuthMethods _authMethods = AuthMethods();
  //upto this

  @override
  Widget build(BuildContext context) {
    String email = '', pass = '';
    SizeConfig().init(context);
    double height = SizeConfig.blockSizeV!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/images/auth/login_image.png'),
                  width: double.infinity,
                ),
                SizedBox(
                  height: height * 2,
                ),
                Text(
                  'Create Your Account',
                  style: kTitle2,
                ),
                SizedBox(
                  height: height * 2,
                ),
                Form(
                  key: _signUpKey,
                  child: Column(
                    children: [
                      // MyTextFormField(
                      //   fillColor: Colors.white,
                      //   hint: 'Name',
                      //   icon: Icons.person,
                      //   inputAction: TextInputAction.next,
                      //   inputType: TextInputType.name,
                      //   focusNode: _signUpFocusNodes[0],
                      //   validator: nameValidator,
                      // ),
                      TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(hintText: 'Email'),
                      ),
                      TextField(
                        onChanged: (value) {
                          pass = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(hintText: 'Password'),
                      ),
                      MyCheckBox(
                        text: 'Keep me signed in',
                      ),
                      MyTextButton(
                        buttonName: 'Create Account',
                        // onPressed: onSubmit,
                        bgColor: kPrimaryColor,

                        onPressed: () async {
                          try {
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .createUserWithEmailAndPassword(
                                    email: email, password: pass);
                            Fluttertoast.showToast(
                                msg: "You Have Sucessfully Registred");

                            //Adding advance custom dialog

                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AdvanceCustomAlert();
                                });

                            //Alert Dialog ended here

                            //not navigating here for advance dialogbox

                            // Navigator.of(context).pushReplacement(
                            // MaterialPageRoute(builder: (context) => LoginPage()));

                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print(
                                  'The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 3,
                          color: kSecondaryColor.withOpacity(0.4),
                        ),
                      ),
                      Text(
                        'Or sign in with',
                        style: kBodyText3,
                      ),
                      Expanded(
                        child: Divider(
                          height: 3,
                          color: kSecondaryColor.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: CustomButton(
                        text: 'Google Sign In',
                        onPressed: () async {
                          bool res =
                              await _authMethods.signInWithGoogle(context);
                          if (res) {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => main_screen()));
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: LargeIconButton(
                        buttonName: 'Google',
                        iconImage: 'assets/images/auth/google_icon.png',
                        onPressed: () {
                          Fluttertoast.showToast(msg: "clicked");
                        },

                        // onPressed: () async {
                        //   Fluttertoast.showToast(msg: "clicked");
                        //   bool res = await _authMethods.signInWithGoogle(context);
                        //   if (res) {
                        //     Navigator.of(context).pushReplacement(
                        //         MaterialPageRoute(builder: (context) => HomeScreen()));
                        //   }
                        // },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: LargeIconButton(
                      buttonName: 'Facebook',
                      iconImage: 'assets/images/auth/facebook_icon.png',
                      onPressed: () {},
                    )),
                  ],
                ),
                SizedBox(
                  height: height * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: kBodyText3,
                    ),
                    SmallTextButton(
                      buttonText: 'Sign in',
                      page: LoginPage(),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AdvanceCustomAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Stack(
        // overflow: overflow.visible,
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 60, 10, 10),
              child: Column(
                children: [
                  Text(
                    'Succesfully Registred',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Now Login to Start Enter Edutools',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'Okay',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 60,
              child: Icon(
                Icons.align_horizontal_right,
                size: 50,
                color: Colors.white,
              ),
            ),
            top: -70,
          )
        ],
      ),
    );
  }
}
