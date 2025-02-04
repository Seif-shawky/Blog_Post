<<<<<<< HEAD
import 'package:blog_projectbased/features/auth/domain/usecases/user_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
=======
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
<<<<<<< HEAD
  final UserSignUps _userSignUp;
  AuthBloc({required UserSignUps userSignUp})
      : _userSignUp = userSignUp,
        super(AuthInitial()) {
    on<AuthSignUp>((event, emit) async {
      final res = await _userSignUp(UserSignUpParams(
        email: event.email,
        password: event.password,
        name: event.name,
      ));
      res.fold((failure) => emit(AuthFailure(failure.message)),
          (uid) => emit(AuthSuccess(uid)));
=======
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354
    });
  }
}
