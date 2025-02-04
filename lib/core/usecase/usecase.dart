import 'package:blog_projectbased/core/error/failures.dart';
<<<<<<< HEAD
import 'package:dartz/dartz.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}
=======
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<SuccessType ,Params > {
  Future<Either<Failure , SuccessType>> call(Params params);
}
>>>>>>> 2097ca758c00f26376ae71c061f4dd8db2be1354
