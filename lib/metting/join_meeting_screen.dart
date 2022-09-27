import 'package:edu_tools/app_styles.dart';
import 'package:edu_tools/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jitsi_meet/jitsi_meet.dart';
import 'package:lottie/lottie.dart';

import '../resources/auth_methods.dart';
import '../resources/jitsi_meet_methods.dart';
import '../widgets/buttons/custom_button.dart';
import '../widgets/meeting_option.dart';

class Join_Meeting_Screen extends StatefulWidget {
  const Join_Meeting_Screen({Key? key}) : super(key: key);

  @override
  State<Join_Meeting_Screen> createState() => _Join_Meeting_ScreenState();
}

class _Join_Meeting_ScreenState extends State<Join_Meeting_Screen> {

  final AuthMethods _authMethods = AuthMethods();
  late TextEditingController meetingIdController;
  late TextEditingController nameController;
  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  bool isAudioMuted = true;
  bool isVideoMuted = true;
  late bool exist;

  @override
  void initState() {
    meetingIdController = TextEditingController();
    nameController = TextEditingController(
      text: _authMethods.user.displayName,  //it will by default print name in text box using email name
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    meetingIdController.dispose();
    nameController.dispose();
    JitsiMeet.removeAllListeners();
  }

  _joinMeeting() {
    _jitsiMeetMethods.createMeeting(
      roomName: meetingIdController.text,
      isAudioMuted: isAudioMuted,
      isVideoMuted: isVideoMuted,
      username: nameController.text,
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: palette.backgroundColor,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "You are in join Meeting Lobby",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),


      //adding



      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(
              "Hey,",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
             "Hello Learner",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
            Image.asset(
              "assets/images/auth/login_image.png",
              height: 325,
              width: 325,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Enter Room ID",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    // controller: meetingIdController,
                    keyboardType: TextInputType.number,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(

                      fillColor: palette.secondaryBackgroundColor,
                      filled: true,
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: "Enter 8 digit ROOM ID here.",
                      contentPadding: EdgeInsets.all(10),
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(
                    height: 60,
                    child: TextField(

                      style: TextStyle(
                        color: Colors.white,
                      ),

                      controller: nameController,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        fillColor: palette.secondaryBackgroundColor,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'Name',
                        contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MeetingOption(

                        text: "Mute Audio",
                        isMute: isAudioMuted,
                        onChange: onAudio,
                      ),
                      MeetingOption(
                        text: "Turn off Video",
                        isMute: isVideoMuted,
                        onChange: onVideo,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(text: "Tap to Join", onPressed: _joinMeeting)
          ],

        ),
      ),
    );
  }

  onAudio(bool value) {
    setState(() {
      isAudioMuted = value;
    });
  }

  onVideo(bool value) {
    setState(() {
      isVideoMuted = value;
    }

    );

  }
}