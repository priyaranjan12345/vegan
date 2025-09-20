import 'package:hive_flutter/hive_flutter.dart';

import 'i_local_storage.dart';

class LocalStorage implements ILocalStorage {
  /// [LocalStorage] is configured with hive database,
  /// which is accepting hive box
  const LocalStorage({required this.box});

  final Box box;

  @override
  String? get({required String key}) {
    return box.get(key) as String?;
  }

  @override
  Future<void> put({
    required String key,
    required String value,
  }) async {
    await box.put(key, value);
  }

  @override
  Future<void> clear() async {
    await box.clear();
  }

  @override
  Future<void> close() async {
    await box.close();
  }
}
