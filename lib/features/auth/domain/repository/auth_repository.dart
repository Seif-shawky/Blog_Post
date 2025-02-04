import 'package:blog_projectbased/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract interface class AuthRepo {
  Future<Either<Failure, String>> signUpWithNameEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure, String>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
