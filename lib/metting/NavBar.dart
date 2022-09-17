import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [

            //card bar

            UserAccountsDrawerHeader(accountName: Text('CEIT Class'), accountEmail: Text('Information technology'),

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
            )
          ],
        )
    );
  }
}
