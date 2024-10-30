import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'smart_device_utils_method_channel.dart';

abstract class SmartDeviceUtilsPlatform extends PlatformInterface {
  /// Constructs a SmartDeviceUtilsPlatform.
  SmartDeviceUtilsPlatform() : super(token: _token);

  static final Object _token = Object();

  static SmartDeviceUtilsPlatform _instance = MethodChannelSmartDeviceUtils();

  /// The default instance of [SmartDeviceUtilsPlatform] to use.
  ///
  /// Defaults to [MethodChannelSmartDeviceUtils].
  static SmartDeviceUtilsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SmartDeviceUtilsPlatform] when
  /// they register themselves.
  static set instance(SmartDeviceUtilsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
