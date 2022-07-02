import 'package:client/constants/resources.dart';
import 'package:client/themes/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: getValueForScreenType<bool>(
        context: context,
        mobile: false,
        tablet: true,
      )
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: appPadding),
                  child: SvgPicture.asset(
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
              },
            ),
      title: Row(
        children: [
          Visibility(
            visible: getValueForScreenType<bool>(
              context: context,
              mobile: false,
              tablet: true,
            ),
            child: const Text('Open Food Facts'),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: 20,
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
          ),
        ],
      ),
      elevation: 0,
    );
