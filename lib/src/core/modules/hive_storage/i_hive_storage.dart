abstract class IHiveStorage {
  Future<void> initialize();
  Future<void> put(String key, dynamic value);
  Future<dynamic> get(String key);
  Future<void> delete(String key);
  Future<void> update(String key, dynamic value);
  Future<void> clear();
  Future<void> close();
}
