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
          Menu(),
          Body(),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'icons/release_icon_transparent.png',
            width: 41,
            height: 65,
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme texttheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '   Sign In to the\nCommunity Portal',
                style: texttheme.headline1,
              ),
              Text(
                "If you don't have an account",
                style: texttheme.subtitle2,
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'You can',
                      style: texttheme.subtitle2,
                    ),
                  ),
                  Text(
                    ' Register here!',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Image.asset(
                'icons/release_icon_with_name_transparent.png',
                width: 400,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: SizedBox(
            width: 320,
            child: _formLogin(context),
          ),
        ),
      ],
    );
  }

  Widget _formLogin(context) {
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'Enter email or Phone number',
            labelStyle: TextStyle(fontSize: 12),
          ),
        ),
        const SizedBox(height: 30),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            counterText: 'Forgot password?',
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
            ),
            labelStyle: TextStyle(fontSize: 12),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: ElevatedButton(
            onPressed: () => ("it's pressed"),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const SizedBox(
                width: double.infinity,
                height: 50,
                child: Center(child: Text('Sign In'))),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
