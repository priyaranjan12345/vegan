abstract class IDeviceInfo {
  Future<String> getDeviceId();
  Future<String> getDeviceModel();
  Future<String> getDeviceOs();
  Future<String> getDeviceOsVersion();
}
