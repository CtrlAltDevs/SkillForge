import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillforge/authentication/repository/auth_repository.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthInitial()) {
    on<AuthSignInWithEmail>((event, emit) async {
      emit(AuthLoading());
      try {
        await authRepository.signInWithEmail(event.email, event.password);
        emit(AuthSuccess());
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    on<AuthSignOut>((event, emit) async {
      await authRepository.signOut();
      emit(AuthInitial());
    });
  }
}
