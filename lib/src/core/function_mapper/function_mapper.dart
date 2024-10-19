/// usage -
/// ```dart
/// main() {
///   final model = BiFunctionMapper(Model1, Model2, ReturnModel);
/// }
/// ```
/// hence model will be the type of ReturnModel
abstract interface class UniFunctionMapper<T, U> {
  T call(U u);
}

abstract interface class BiFunctionMapper<S, T, U> {
  S call(T t, U u);
}
