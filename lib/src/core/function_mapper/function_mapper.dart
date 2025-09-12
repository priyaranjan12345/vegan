/// usage -
/// ```dart
/// main() {
///   final model = BiFunctionMapper(Model1, Model2, ReturnModel);
/// }
/// ```
/// hence model will be the type of ReturnModel
abstract interface class UniFunctionMapper<O, I> {
  O call(I i);
}

abstract interface class BiFunctionMapper<O, I1, I2> {
  O call(I1 i1, I2 i2);
}
