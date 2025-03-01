class AppUrl {
  static const _videoUrl = "https://www.apirequest.in/video/api";
  //String.fromEnvironment('api');
  // https://www.apirequest.in/movie/api
  // https://www.apirequest.in/movie/api/Avatar // by title

  static Uri get getUri => Uri.parse(_videoUrl);
}
