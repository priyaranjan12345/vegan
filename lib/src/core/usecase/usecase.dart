import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract interface class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
