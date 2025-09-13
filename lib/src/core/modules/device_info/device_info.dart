import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';

import 'i_device_info.dart';

class DeviceInfo implements IDeviceInfo {
  const DeviceInfo({
    required this.deviceInfoPlugin,
  });

  final DeviceInfoPlugin deviceInfoPlugin;

  @override
  Future<String> getDeviceId() async {
    try {
      if (Platform.isAndroid) {
        final androidInfo = await deviceInfoPlugin.androidInfo;
        return androidInfo.id;
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfoPlugin.iosInfo;
        return iosInfo.identifierForVendor ?? 'Unknown';
      }
      return 'Unsupported platform';
    } catch (e) {
      return 'Error: $e';
    }
  }

  @override
  Future<String> getDeviceModel() async {
    try {
      if (Platform.isAndroid) {
        final androidInfo = await deviceInfoPlugin.androidInfo;
        return androidInfo.model;
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfoPlugin.iosInfo;
        return iosInfo.model;
      }
      return 'Unsupported platform';
    } catch (e) {
      return 'Error: $e';
    }
  }

  @override
  Future<String> getDeviceOs() async {
    try {
      if (Platform.isAndroid) {
        return 'Android';
      } else if (Platform.isIOS) {
        return 'iOS';
      }
      return 'Unsupported platform';
    } catch (e) {
      return 'Error: $e';
    }
  }

  @override
  Future<String> getDeviceOsVersion() async {
    try {
      if (Platform.isAndroid) {
        final androidInfo = await deviceInfoPlugin.androidInfo;
        return androidInfo.version.release;
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfoPlugin.iosInfo;
        return iosInfo.systemVersion;
      }
      return 'Unsupported platform';
    } catch (e) {
      return 'Error: $e';
    }
  }
}
