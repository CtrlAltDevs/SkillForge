import 'package:go_router/go_router.dart';
import 'package:skillforge/pages/login/login_screen.dart';
import 'package:skillforge/pages/register/register_screen.dart';

final GoRouter routes = GoRouter(
  initialLocation: '/login', // Define a tela inicial do seu app
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
