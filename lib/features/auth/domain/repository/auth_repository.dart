import 'package:blog_projectbased/core/error/failures.dart';
<<<<<<< HEAD
import 'package:dartz/dartz.dart';
=======
import 'package:fpdart/fpdart.dart';
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354

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
