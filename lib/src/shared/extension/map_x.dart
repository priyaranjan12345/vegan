import 'dart:isolate';

extension MapX on Map<String, dynamic> {
  Future<T> parseToModel<T>(
    T Function(Map<String, dynamic>) fromJson,
  ) async => await Isolate.run(
    () => fromJson(this),
  );
}
