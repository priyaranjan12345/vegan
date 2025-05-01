abstract class YtApiBody {
  static const home = {
    "browseId": "FEmusic_home",
    "context": {
      "client": {
        "clientName": "WEB_REMIX",
        "clientVersion": "1.20220404.01.00",
        "hl": "en",
        "gl": "IN"
      }
    }
  };

  final moods = {
    "browseId": "FEmusic_moods_and_genres",
    "context": {
      "client": {
        "clientName": "WEB_REMIX",
        "clientVersion": "1.20220404.01.00",
        "hl": "en",
        "gl": "IN"
      }
    }
  };

  Map<String, Object> moodsContent(String params) => {
        "browseId": "FEmusic_moods_and_genres_category",
        "params": params,
        "context": {
          "client": {
            "clientName": "WEB_REMIX",
            "clientVersion": "1.20220404.01.00",
            "hl": "en",
            "gl": "IN"
          }
        }
      };

  // "browseId": "FEmusic_moods_and_genres_category",
  // "params": "ggMPOg1uX09LWkhnTjRGRUJh",
  // "browseId": "FEmusic_moods_and_genres",

  static const global = {
    "browseId": "FEmusic_home",
    "context": {
      "client": {
        "clientName": "WEB_REMIX",
        "clientVersion": "1.20220708.01.00",
        "hl": "en",
        "gl": "US",
        "experimentIds": [],
        "experimentsToken": "",
        "browserName": "Chrome",
        "browserVersion": "91.0.4472.124",
        "osName": "Android",
        "osVersion": "13.0",
        "platform": "MOBILE"
      },
      "user": {"lockedSafetyMode": false}
    }
  };
}
