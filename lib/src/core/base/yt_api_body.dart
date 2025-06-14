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

  static Map<String, Object> playlistContent(String? browseId) => {
    if (browseId != null) 'browseId': browseId,
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

  static const global = {
    'browseId': 'FEmusic_home',
    'context': {
      'client': {
        'clientName': 'WEB_REMIX',
        'clientVersion': '1.20220708.01.00',
        'hl': 'en',
        'gl': 'US',
        'experimentIds': [],
        'experimentsToken': '',
        'browserName': 'Chrome',
        'browserVersion': '91.0.4472.124',
        'osName': 'Android',
        'osVersion': '13.0',
        'platform': 'MOBILE',
      },
      'user': {'lockedSafetyMode': false},
    },
  };
}
