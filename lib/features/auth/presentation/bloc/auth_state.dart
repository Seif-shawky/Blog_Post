part of 'auth_bloc.dart';

@immutable
<<<<<<< HEAD
sealed class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final String uid;

  const AuthSuccess(this.uid);
}

final class AuthFailure extends AuthState {
  final String? message;
  const AuthFailure(this.message);
}
=======
sealed class AuthState {}

final class AuthInitial extends AuthState {}
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354
