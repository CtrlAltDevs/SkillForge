abstract class AuthEvent {}

class AuthSignInWithEmail extends AuthEvent {
  final String email;
  final String password;

  AuthSignInWithEmail({required this.email, required this.password});
}

class AuthSignInWithGoogle extends AuthEvent {}

class AuthSignOut extends AuthEvent {}

class RegisterWithEmailAndPassword extends AuthEvent {
  final String email;
  final String password;
  RegisterWithEmailAndPassword({required this.email, required this.password});
}
