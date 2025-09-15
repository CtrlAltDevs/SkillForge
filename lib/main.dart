import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillforge/authentication/bloc/auth_bloc.dart';
import 'package:skillforge/authentication/repository/auth_repository.dart';
import 'package:skillforge/core/routes.dart';
import 'package:skillforge/utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SkillForgeApp());
}

class SkillForgeApp extends StatelessWidget {
  final AuthRepository _authRepository = AuthRepository();
  SkillForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => AuthBloc(authRepository: _authRepository),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: routes,
        title: 'Flutter Demo',
        theme: AppTheme.themeApp(),
      ),
    );
  }
}
