import 'package:hive_flutter/hive_flutter.dart';

import 'i_hive_storage.dart';

class HiveStorage implements IHiveStorage {
  HiveStorage(this.boxName);

  final String boxName;
  Box<dynamic>? _box;

  @override
  Future<void> initialize() async {
    await Hive.initFlutter();
    if (!Hive.isBoxOpen(boxName)) {
      _box = await Hive.openBox<dynamic>(boxName);
    } else {
      _box = Hive.box<dynamic>(boxName);
    }
  }

  @override
  Future<void> put(String key, dynamic value) async {
    if (_box == null) {
      throw Exception('Storage not initialized. Call initialize() first.');
    }
    await _box!.put(key, value);
  }

  @override
  Future<dynamic> get(String key) async {
    if (_box == null) {
      throw Exception('Storage not initialized. Call initialize() first.');
    }
    return _box!.get(key);
  }

  @override
  Future<void> delete(String key) async {
    if (_box == null) {
      throw Exception('Storage not initialized. Call initialize() first.');
    }
    await _box!.delete(key);
  }

  @override
  Future<void> update(String key, dynamic value) async {
    await put(key, value);
  }

  @override
  Future<void> clear() async {
    if (_box == null) {
      throw Exception('Storage not initialized. Call initialize() first.');
    }
    await _box!.clear();
  }

  @override
  Future<void> close() async {
    if (_box == null) {
      throw Exception('Storage not initialized. Call initialize() first.');
    }
    await _box!.close();
    _box = null;
  }
}
