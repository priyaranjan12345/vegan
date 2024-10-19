import 'package:http/http.dart' as http;
import 'package:vegan/src/core/base/app_url.dart';

abstract class VideoHubRemoteDatasource {
  Future<http.Response> getVideosResponse();
}

class IVideoHubRemoteDatasource implements VideoHubRemoteDatasource {
  final http.Client httpClient;

  IVideoHubRemoteDatasource({
    required this.httpClient,
  });

  @override
  Future<http.Response> getVideosResponse() async {
    return await httpClient.get(AppUrl.getUri);
  }
}
