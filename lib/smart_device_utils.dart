import 'smart_device_utils_platform_interface.dart';

/// A class representing a SmartDeviceUtils.
///
/// This class provides methods to get platform specific information like platform version etc.
class SmartDeviceUtils {
  /// Return platform version like Android 14.
  Future<String?> getPlatformVersion() {
    return SmartDeviceUtilsPlatform.instance.getPlatformVersion();
  }
}
