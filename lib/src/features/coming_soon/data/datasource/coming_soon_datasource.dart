import 'package:http/http.dart' as http;
import 'package:vegan/src/core/base/app_url.dart';

abstract class IComingSoonDatasource {
  Future<http.Response> getComingSoonResponse();
}

class ComingSoonDatasource implements IComingSoonDatasource {
  final http.Client httpClient;

  ComingSoonDatasource({
    required this.httpClient,
  });

  @override
  Future<http.Response> getComingSoonResponse() async {
    return await httpClient.get(AppUrl.getComingSoonUri);
  }
}
