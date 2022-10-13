import 'package:flutter/material.dart';
import '../resources/auth_methods.dart';
class HomeNavBar extends StatefulWidget {
  const HomeNavBar({Key? key}) : super(key: key);
  @override
  State<HomeNavBar> createState() => _HomeNavBar();
}


class _HomeNavBar extends State<HomeNavBar> {

  final AuthMethods _authMethods = AuthMethods();
  late TextEditingController nameController;


  @override
  void initState() {
    nameController = TextEditingController(
      text: _authMethods.user.displayName,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [

          //card bar

          UserAccountsDrawerHeader(accountName: Text('CEIT Class'), accountEmail: Text(nameController.text),

            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(image: AssetImage("assets/images/auth/home_login_signup.png"),),
              ),
            ),

          ),



          //card bar end



          ListTile(
            leading: Icon(Icons.meeting_room),
            title: Text("Meeting"),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("Chatting"),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text("Contact"),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.create),
            title: Text("Create  Meeting"),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.join_full),
            title: Text("Join Meeting"),
            onTap: () => {},
          ),

          ListTile(
              leading: Icon(Icons.history),
              title: Text("History"),
              onTap: () =>{}
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (context) => HistoryMeetingScreen()))

          ),

        ],
      ),


    );
  }
}
