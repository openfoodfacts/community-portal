import 'package:client/constants/resources.dart';
import 'package:client/themes/theme_constants.dart';
import 'package:flutter/material.dart';

class CustomloginHeader extends StatelessWidget {
  const CustomloginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: apppadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            Resources.icon,
            width: 41,
            height: 45,
          ),
        ],
      ),
    );
  }
}
