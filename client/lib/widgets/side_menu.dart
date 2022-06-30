import 'package:client/constants/resources.dart';
import 'package:client/themes/theme_constants.dart';

import 'package:client/widgets/side_menu_items.dart';

import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primary,
      child: ListView(
        children: [
          Container(
              padding: const EdgeInsets.all(apppadding),
              child: const SizedBox(
                width: 16,
              )),
          SideMenuList(
              title: 'Active Groups',
              images: Resources.active,
              onclicked: () {}),
          SideMenuList(
              title: 'Joined Groups',
              images: Resources.joined,
              onclicked: () {
                Navigator.of(context).pushNamed(
                  '/joinedgroup',
                );
              }),
          SideMenuList(
              title: 'Create Group',
              images: Resources.create,
              onclicked: () {
                Navigator.of(context).pushNamed(
                  '/creategroup',
                );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: apppadding * 2),
            child: Divider(
              color: secondary,
              thickness: 0.2,
            ),
          ),
          SideMenuList(
              title: 'Logout', images: Resources.logout, onclicked: () {}),
        ],
      ),
    );
  }
}
