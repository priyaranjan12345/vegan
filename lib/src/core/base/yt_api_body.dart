abstract class YtApiBody {
  static const _context = {
    'context': {
      'client': {
        'visitorData': 'CgtYRldyczRsdm9XUSjE6JbCBjIKCgJJThIEGgAgWw%3D%3D',
        'clientName': 'WEB_REMIX',
        'clientVersion': '1.20220404.01.00',
        'hl': 'en',
        'gl': 'IN',
        'browserName': 'Chrome',
        'browserVersion': '91.0.4472.124',
        'osName': 'Android',
        'osVersion': '13.0',
        'platform': 'MOBILE',
        'originalUrl': 'https://music.youtube.com/',
      },
    },
  };

  static const home = {
    // "browseId": "FEmusic_home",
    ..._context,
  };

  static const moods = {
    'browseId': 'FEmusic_moods_and_genres',
    ..._context,
  };

  static Map<String, Object> moodsContent(String params) => {
    // 'browseId': 'FEmusic_moods_and_genres_category',
    'browseId': 'FEmusic_home',
    'params': params,
    ..._context,
  };

  static Map<String, Object> playlistContent(
    String? browseId, {
    String? params,
  }) => {
    if (browseId != null) 'browseId': browseId,
    if (params != null && params.isNotEmpty) 'params': params,
    ..._context,
  };

  static Map<String, Object> nextUp({
    required String videoId,
    required String playlistId,
  }) => {
    'videoId': videoId,
    'playlistId': playlistId,
    ..._context,
  };

  /// continution for browse
  /// next content
  static Map<String, Object> continuationContent({String? continuationId}) => {
    'browseId': 'FEmusic_home',
    if (continuationId != null) 'continuation': continuationId,
    ..._context,
  };

  /// search suggestions
  static Map<String, Object> search({String? input}) => {
    'input': input ?? '',
    ..._context,
  };

  static const global = {
    'browseId': 'FEmusic_home',
    'context': {
      'client': {
        'hl': 'en',
        'gl': 'US',
        'clientName': 'WEB_REMIX',
        'clientVersion': '1.20220708.01.00', // TODO: use date and time
        'experimentIds': [],
        'experimentsToken': '',
        'browserName': 'Chrome',
        'browserVersion': '91.0.4472.124',
        'osName': 'Android', // TODO: use platform
        'osVersion': '13.0',
        'platform': 'MOBILE',
        'visitorData': 'CgtYRldyczRsdm9XUSjPybTCBjIKCgJJThIEGgAgWw%3D%3D',
      },
      'user': {
        'lockedSafetyMode': false,
      },
    },
  };
}
