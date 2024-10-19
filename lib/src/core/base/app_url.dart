class AppUrl {
  static const _url = String.fromEnvironment('api');

  static Uri get getUri => Uri.http(_url);
}
