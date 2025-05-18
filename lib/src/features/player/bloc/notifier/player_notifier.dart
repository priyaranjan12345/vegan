import 'package:flutter/foundation.dart';

class PlayerNotifer extends ChangeNotifier {
  bool _isMiniPlayer = true;
  bool get isMiniPlayer => _isMiniPlayer;

  void togglePlayer() {
    _isMiniPlayer = !_isMiniPlayer;
    notifyListeners();
  }
}
