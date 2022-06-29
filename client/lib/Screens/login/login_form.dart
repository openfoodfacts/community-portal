import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginForm> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    TextTheme texttheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'Enter email or Username',
            labelStyle: TextStyle(fontSize: 12),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          obscureText: _isObscure,
          decoration: InputDecoration(
            hintText: 'Password',
            counterText: 'Forgot password?',
            suffixIcon: IconButton(
              icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              "If you don't have an account",
              style: texttheme.subtitle2,
            ),
            RichText(
              text: TextSpan(
                text: ' You can,',
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
        const SizedBox(
          height: 15,
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
