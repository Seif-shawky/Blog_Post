import 'package:blog_projectbased/core/error/failures.dart';
import 'package:blog_projectbased/core/usecase/usecase.dart';
import 'package:blog_projectbased/features/auth/domain/repository/auth_repository.dart';
<<<<<<< HEAD
import 'package:dartz/dartz.dart';

class UserSignUps implements UseCase<String, UserSignUpParams> {
  final AuthRepo authRepo;
  const UserSignUps(this.authRepo);
=======
import 'package:fpdart/fpdart.dart';

class UserSignUp implements UseCase<String, UserSignUpParams> {
  final AuthRepo authRepo;
  const UserSignUp(this.authRepo);
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354

  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) {
    return authRepo.signUpWithNameEmailPassword(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }
}

class UserSignUpParams {
  final String email;
  final String password;
  final String name;
  UserSignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
