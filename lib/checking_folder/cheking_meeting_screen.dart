import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/reusable_icon.dart';

class Checking_Modual extends StatefulWidget {
  const Checking_Modual({Key? key}) : super(key: key);

  @override
  State<Checking_Modual> createState() => _Checking_ModualState();
}

class _Checking_ModualState extends State<Checking_Modual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableIcon(
                text: "New Meeting",
                onPressed: (){},
                lottieAnimation: "assets/animations/new_meeting_animation.json",
              ),
              ReusableIcon(
                text: "Join Meeting",
                onPressed: (){},
                lottieAnimation:
                "assets/animations/join_now_meeting_animation.json",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableIcon(
                text: "Schedule",
                onPressed: () {},
                lottieAnimation:
                "assets/animations/schedule_meeting_animation.json",
              ),
              ReusableIcon(
                text: "Share Screen",
                onPressed: () {},
                lottieAnimation:
                "assets/animations/share_screen_animation.json",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
