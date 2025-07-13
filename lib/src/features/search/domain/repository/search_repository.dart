import 'package:dartz/dartz.dart';

import '../../data/model/yt_search_model.dart';

abstract interface class SearchRepository {
  Future<Either<Exception, YtSearchModel>> fetchSearchResult({String? input});
}
