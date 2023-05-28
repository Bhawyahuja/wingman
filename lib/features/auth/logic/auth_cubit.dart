import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wingman/features/auth/data/auth_repository.dart';

part 'auth_cubit.freezed.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.uninitialized()) {
    _repository = AuthRepository();
  }

  late AuthRepository _repository;

  void init() async {
    bool isLoggedIn = await _repository.isLoggedIn();
    if (isLoggedIn) {
      bool isOnboarded = await _repository.isOnboarded();
      if (isOnboarded) {
        emit(const AuthState.onboarded());
      } else {
        emit(const AuthState.authenticated());
      }
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  void logIn() => emit(const AuthState.authenticated());

  void onboard() => emit(const AuthState.onboarded());

  void logOut() async {
    await _repository.logout();
    emit(const AuthState.unauthenticated());
  }
}
