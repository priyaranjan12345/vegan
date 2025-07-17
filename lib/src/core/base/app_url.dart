class AppUrl {
  static const _comingSoonUrl = 'https://www.apirequest.in/movie/api';
  //String.fromEnvironment('api');
  //'AIzaSyC9XL3ZjWddXya6X74dJoCTL-WEYFDNX30';
  static const _key = 'AIzaSyBmvp4--dmdn0R40xMUbYs1u52MIdevyHQ';
  static const _apiVersion = 'v1';
  static const ytmusicUrl = 'https://music.youtube.com/youtubei/$_apiVersion';

  static String ytVideoUrl(String videoId) =>
      'https://youtube.com/watch?v=$videoId';

  static Uri get getUri => Uri.parse(ytmusicUrl);
  static Uri get getComingSoonUri => Uri.parse(_comingSoonUrl);

  static const String search = '/music/get_search_suggestions';
  static const String browse = '/browse?key=$_key';
  static const String library = '/library?key=$_key';
  static const String music = '/music?key=$_key';
  static const String next = '/next?key=$_key';
}
