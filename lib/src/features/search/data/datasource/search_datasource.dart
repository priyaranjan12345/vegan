import 'package:dio/dio.dart';

import '../../../../core/base/app_url.dart';
import '../../../../core/base/yt_api_body.dart';

abstract class SearchDatasource {
  Future<Response> getSearchResponse({String? input});
}

class ISearchDatasource implements SearchDatasource {
  final Dio dio;

  ISearchDatasource({
    required this.dio,
  });

  @override
  Future<Response> getSearchResponse({String? input}) async {
    return await dio.post(
      AppUrl.browse,
      data: YtApiBody.search(input: input),
    );
  }
}
