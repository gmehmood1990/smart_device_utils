import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'smart_device_utils_platform_interface.dart';

/// An implementation of [SmartDeviceUtilsPlatform] that uses method channels.
class MethodChannelSmartDeviceUtils extends SmartDeviceUtilsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('smart_device_utils');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
