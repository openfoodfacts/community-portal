import 'package:client/screens/activegroup/active_group.dart';
import 'package:client/widgets/side_menu.dart';

import 'package:flutter/material.dart';

class DashBoardContent extends StatelessWidget {
  const DashBoardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(
          child: SideMenu(),
        ),
        Expanded(
          flex: 5,
          child: ActiveGroup(),
        )
      ],
    );
  }
}
