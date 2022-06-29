import 'package:client/Screens/login/custom_login_header.dart';
import 'package:client/Screens/login/desktop_login_page.dart';
import 'package:client/Screens/login/mobile_login_page.dart';
import 'package:client/helpers/responsiveness.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: const [
          CustomloginHeader(),
          Responsive(
            mobile: Mobilelogin(),
            desktop: Desktoplogin(),
            tablet: Mobilelogin(),
          ),
        ],
      ),
    );
  }
}
