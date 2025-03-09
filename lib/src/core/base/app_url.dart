class AppUrl {
  static const _videoUrl = "https://www.apirequest.in/video/api";
  static const _comingSoonUrl = "https://www.apirequest.in/movie/api";
  //String.fromEnvironment('api');
  //
  // https://www.apirequest.in/movie/api/Avatar // by title

  static Uri get getUri => Uri.parse(_videoUrl);
  static Uri get getComingSoonUri => Uri.parse(_comingSoonUrl);
}
