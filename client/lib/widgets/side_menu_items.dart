import 'package:client/themes/theme_constants.dart';
import 'package:flutter/material.dart';

class SideMenuList extends StatelessWidget {
  const SideMenuList(
      {Key? key,
      required this.title,
      required this.images,
      required this.onclicked})
      : super(key: key);

  final String title, images;
  final VoidCallback onclicked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onclicked,
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        images,
        height: 20,
      ),
      title: Text(
        title,
        style: TextStyle(color: onprimary),
      ),
    );
  }
}
