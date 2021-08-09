import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Prasun Nandy Pritam", style: TextStyle(color: Colors.white,),),
                accountEmail: Text("heyprasun@gmail.com", style: TextStyle(color: Colors.white,),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/29012775?v=4"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home", style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile", style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Email Me", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}