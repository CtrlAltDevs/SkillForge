import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
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
                child: CustomTextFormField(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormField(),
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
            ],
          ),
        ),
      ),
    );
  }
}
