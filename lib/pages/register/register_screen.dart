import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:skillforge/utils/app_colors.dart';
import 'package:skillforge/widgets/custom_button.dart';
import 'package:skillforge/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Text(
                "Ultralearning",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Join in our community",
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome to the best platform to connect ultralearners",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.0, color: Colors.white),
                ),
              ),
              Image.asset("assets/images/logo_skillforge.png", height: 150),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextFormField(
                  hintText: 'Email',
                  icon: Icons.email_outlined, // Email icon
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextFormField(
                  hintText: 'Full Name',
                  icon: Icons.person_outline_rounded, // User icon
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextFormField(
                  hintText: 'Password',
                  icon: Icons.lock_outline, // Lock icon
                  obscureText: true, // Hide password
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextFormField(
                  hintText: 'Confirm Password',
                  icon: Icons.lock_outline, // Lock icon
                  obscureText: true, // Hide password
                ),
              ),
              const Spacer(), // Pushes content to the top and buttons to the bottom
              CustomButton(
                onPressed: () {
                  // Handle registration logic here
                },
                name: 'Register',
                color: Colors.white,
                textColor: AppColors.blueGrey,
              ),
              CustomButton(
                onPressed: () {
                  // Handle Google registration logic here
                },
                name: 'Continue with Google',
                color: Colors.white,
                textColor: AppColors.blueGrey,
                iconData: FontAwesomeIcons.google,
              ),
              const SizedBox(
                height: 20.0,
              ), // Spacing before "Already have an account?"
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(color: Colors.amber, fontSize: 12.0),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go("/login");
                          },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
