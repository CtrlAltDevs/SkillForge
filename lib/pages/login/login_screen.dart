import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(12.0),
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom,
              ),
              child: IntrinsicHeight(
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
                    Image.asset(
                      "assets/images/logo_skillforge.png",
                      height: 150,
                    ),
                    const SizedBox(height: 12),
                    CustomTextFormField(
                      labelText: "Write your e-mail",
                      icon: Icons.mail_outline,
                    ),
                    const SizedBox(height: 12),
                    CustomTextFormField(
                      labelText: "Write your password",
                      icon: Icons.lock_outline,
                      obscureText: true,
                    ),
                    const SizedBox(height: 24),
                    CustomButton(
                      onPressed: () {},
                      name: 'Sign in',
                      color: Colors.white,
                      textColor: AppColors.blueGrey,
                    ),
                    Text("Or", style: TextStyle(color: Colors.white)),
                    CustomButton(
                      onPressed: () {},
                      name: 'Continue with Google',
                      color: Colors.white,
                      textColor: AppColors.blueGrey,
                      iconData: FontAwesomeIcons.google,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                            TextSpan(
                              text: "Create an account",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 12.0,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
