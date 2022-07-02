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
            padding: const EdgeInsets.all(appPadding),
            child: const SizedBox(
              width: 16,
            ),
          ),
          SideMenuList(
            title: 'Active Groups',
            images: Resources.active,
            onClicked: () {},
          ),
          SideMenuList(
            title: 'Joined Groups',
            images: Resources.joined,
            onClicked: () {
              Navigator.of(context).pushNamed(
                '/joinedgroup',
              );
            },
          ),
          SideMenuList(
            title: 'Create Group',
            images: Resources.create,
            onClicked: () {
              Navigator.of(context).pushNamed(
                '/creategroup',
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: secondary,
              thickness: 0.2,
            ),
          ),
          SideMenuList(
            title: 'Logout',
            images: Resources.logout,
            onClicked: () {},
          ),
        ],
      ),
    );
  }
}
