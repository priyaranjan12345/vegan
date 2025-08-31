import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract interface class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}
