import 'package:client/Screens/login/login_form.dart';
import 'package:client/constants/resources.dart';
import 'package:flutter/material.dart';

class Mobilelogin extends StatelessWidget {
  const Mobilelogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme texttheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '   Sign In to the\nCommunity Portal',
                style: texttheme.headline1,
              ),
              Image.asset(
                Resources.iconwithtext,
                width: 400,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: const SizedBox(
            width: 320,
            child: LoginForm(),
          ),
        ),
      ],
    );
  }
}
