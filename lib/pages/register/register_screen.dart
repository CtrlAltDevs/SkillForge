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
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
          ), // Back arrow icon
          onPressed: () {
            context.go("/login");
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Text(
                "Ultralearning",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0, // Increased font size for title
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0), // Spacing
              const Text(
                "Join our community!", // Adjusted subtitle for registration
                style: TextStyle(fontSize: 22.0, color: Colors.white),
              ),
              const SizedBox(height: 30.0), // Spacing before text fields
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextFormField(
                  hintText: 'Email',
                  icon: FontAwesomeIcons.envelope, // Email icon
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextFormField(
                  hintText: 'Full Name',
                  icon: FontAwesomeIcons.user, // User icon
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextFormField(
                  hintText: 'Password',
                  icon: FontAwesomeIcons.key, // Lock icon
                  obscureText: true, // Hide password
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomTextFormField(
                  hintText: 'Confirm Password',
                  icon: FontAwesomeIcons.key, // Lock icon
                  obscureText: true, // Hide password
                ),
              ),
              const Spacer(), // Pushes content to the top and buttons to the bottom
              CustomButton(
                onPressed: () {
                  // Handle registration logic here
                },
                name: 'Register',
                color: AppColors.blueGrey,
                textColor: Colors.white,
              ),
              CustomButton(
                onPressed: () {
                  // Handle Google registration logic here
                },
                name: 'Continue with Google',
                color: AppColors.blueGrey,
                textColor: Colors.white,
                iconData: FontAwesomeIcons.google,
              ),
              const SizedBox(
                height: 20.0,
              ), // Spacing before "Already have an account?"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go("/login");
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.blue, // A distinct color for the link
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
