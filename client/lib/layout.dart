import 'package:client/helpers/responsiveness.dart';

import 'package:client/widgets/dash_board_contents.dart';
import 'package:client/widgets/side_menu.dart';

import 'package:flutter/material.dart';

import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const Responsive(
          desktop: DashBoardContent(),
          mobile: Padding(padding: EdgeInsets.symmetric(horizontal: 16))),
    );
  }
}
