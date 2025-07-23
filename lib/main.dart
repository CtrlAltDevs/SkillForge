import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:skillforge/pages/login/login_screen.dart';
import 'package:skillforge/utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const SkillForgeApp());
}

class SkillForgeApp extends StatelessWidget {
  const SkillForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme(),
      home: const LoginScreen(),
    );
  }
}
