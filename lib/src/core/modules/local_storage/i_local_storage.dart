abstract class ILocalStorage {
  /// for storing value on defined key
  /// on the box
  Future<void> put({required String key, required String value});

  /// for getting value as String for a
  /// given key from the box
  String? get({required String key});
  Future<void> clear();
  Future<void> close();
}
