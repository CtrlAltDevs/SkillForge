import 'package:flutter/material.dart';
import 'package:skillforge/pages/home_screen.dart';
import 'package:skillforge/widgets/grey_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                "Ultralearning",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Join in our community",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              Spacer(),
              GreyButton(
                onPressed: () {},
                name: 'Sign up with email',
                color: Colors.blue,
                textColor: Colors.white,
              ),
              GreyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyHomePage();
                      },
                    ),
                  );
                },
                name: 'Sign in',
              ),
              Text("Or continue with"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GreyButton(onPressed: () {}, name: 'Facebook'),
                  SizedBox(width: 10),
                  GreyButton(onPressed: () {}, name: 'Twitter'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
