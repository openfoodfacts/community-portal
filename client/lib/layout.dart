import 'package:client/widgets/dash_board_contents.dart';
import 'package:client/widgets/side_menu.dart';
import 'package:client/widgets/top_nav.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: ScreenTypeLayout(
        mobile: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
        ),
        desktop: const DashBoardContent(),
        tablet: const DashBoardContent(),
      ),
    );
  }
}
