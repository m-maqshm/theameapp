import 'package:flutter/material.dart';

import '../../../helper/storg_helper.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key? key}) : super(key: key);
  StorageHelper storageHelper = StorageHelper.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(storageHelper.readKey("f_name")),
            accountEmail: Text(storageHelper.readKey("token")),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(storageHelper.readKey("image")),
            ),
          ),
          ListTile(
            onTap: () {
              storageHelper.removeAll();
              Navigator.pushNamedAndRemoveUntil(
                  context, "/splash", (route) => false);
            },
            title: Text("log out"),
          )
        ],
      ),
    );
  }
}
