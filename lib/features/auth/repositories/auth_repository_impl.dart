import 'package:blog_projectbased/core/error/exceptions.dart';
import 'package:blog_projectbased/core/error/failures.dart';
import 'package:blog_projectbased/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_projectbased/features/auth/domain/repository/auth_repository.dart';
<<<<<<< HEAD
import 'package:dartz/dartz.dart';
// import 'package:fpdart/fpdart.dart';
=======
import 'package:fpdart/fpdart.dart';
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354

class AuthRepositoryImpl implements AuthRepo {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, String>> loginWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithNameEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final userId = await remoteDataSource.signUpWithNameEmailPassword(
        name: name,
        email: email,
        password: password,
      );

      return right(userId);
    } on ServerException catch (e) {
      return left( 
<<<<<<< HEAD
        Failure(message: e.message),
=======
        Failure(),
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354
      );
    }
  }
}
