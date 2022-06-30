import 'package:client/constants/resources.dart';
import 'package:client/helpers/responsiveness.dart';
import 'package:client/themes/theme_constants.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsive.isMobile(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: apppadding),
                  child: Image.asset(
                    Resources.icon,
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                key.currentState!.openDrawer();
              }),
      title: Row(
        children: [
          Visibility(
            visible: !Responsive.isMobile(context),
            child: const Text('Open Food Facts'),
          ),
          Expanded(child: Container()),
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
          Container(
            width: 1,
            height: 22,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 24,
          ),
          const Text('User name'),
          const SizedBox(
            width: 16,
          ),
          Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.all(2),
            child: const CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      elevation: 0,
    );
