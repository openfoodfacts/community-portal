import 'package:client/themes/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenuList extends StatelessWidget {
  const SideMenuList({
    Key? key,
    required this.title,
    required this.images,
    required this.onClicked,
  }) : super(key: key);

  final String title;
  final String images;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onClicked,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        images,
        height: 20,
      ),
      title: Text(
        title,
        style: const TextStyle(color: onprimary),
      ),
    );
  }
}
