import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:skillforge/utils/app_colors.dart';
import 'package:skillforge/widgets/custom_button.dart';
import 'package:skillforge/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                "Ultralearning",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Join in our community",
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormField(
                  hintText: "E-mail",
                  prefixIcon: FontAwesomeIcons.envelope,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormField(
                  hintText: "Password",
                  prefixIcon: FontAwesomeIcons.key,
                  obscureText: true,
                ),
              ),
              Spacer(),
              CustomButton(
                onPressed: () {},
                name: 'Sign in',
                color: AppColors.blueGrey,
                textColor: Colors.white,
              ),
              Text("Or", style: TextStyle(color: Colors.white)),
              CustomButton(
                onPressed: () {},
                name: 'Continue with Google',
                color: AppColors.blueGrey,
                textColor: Colors.white,
                iconData: FontAwesomeIcons.google,
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 20.0),
                child: TextButton(
                  onPressed: () => context.go("/register"),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
