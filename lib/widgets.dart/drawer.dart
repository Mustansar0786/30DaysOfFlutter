// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepOrange,
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            // ignore: prefer_const_constructors
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              accountName: const Text("Mustansar"),
              accountEmail: const Text("mustansar.mh30@gmail.com"),
              // ignore: prefer_const_constructors
              currentAccountPicture: CircleAvatar(
                //radious directly not working
                backgroundImage:
                    const AssetImage("assets/images/Mustansar.png"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email me",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
