import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final imageUrl =
      "https://avatars.githubusercontent.com/u/12619420?s=460&u=26db98cbde1dd34c7c67b85c240505a436b2c36d&v=4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.yellow,
      padding: EdgeInsets.zero,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text(
                "Revision",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "Revision@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          //1
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "home",
              textScaleFactor: 1.5,
            ),
          ),
          //2
          ListTile(
            leading: Icon(
              CupertinoIcons.mail_solid,
              color: Colors.black,
            ),
            title: Text(
              "mail",
              textScaleFactor: 1.5,
            ),
          ),
          //3
          ListTile(
            leading: Icon(
              CupertinoIcons.up_arrow,
              color: Colors.black,
            ),
            title: Text(
              "up",
              textScaleFactor: 1.5,
            ),
          )
        ],
      ),
    ));
  }
}
