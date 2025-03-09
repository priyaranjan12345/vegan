import 'package:dartz/dartz.dart';

import '../../data/model/model.dart' show ComingSoonModel;

abstract interface class IComingSoonRepository {
  Future<Either<Exception, List<ComingSoonModel>>> getComingSoon();
}
