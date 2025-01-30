import 'package:blog_projectbased/core/error/failures.dart';
import 'package:blog_projectbased/core/usecase/usecase.dart';
import 'package:blog_projectbased/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements UseCase<String, UserSignUpParams> {
  final AuthRepo authRepo;
  const UserSignUp(this.authRepo);

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
