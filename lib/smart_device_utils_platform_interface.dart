import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'smart_device_utils_method_channel.dart';

/// An abstract base class that provides a platform interface for smart device utilities.
///
/// This class should be extended by platform-specific implementations to provide
/// functionalities such as retrieving platform-specific information.
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

  /// Retrieves the platform version as a [String].
  ///
  /// This method should be overridden by platform-specific implementations
  /// to return the current platform version. If not implemented, an
  /// [UnimplementedError] is thrown.
  ///
  /// Returns a [Future] that completes with a string containing the platform
  /// version, or `null` if unavailable.
  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
