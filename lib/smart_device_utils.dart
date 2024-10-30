
import 'smart_device_utils_platform_interface.dart';

class SmartDeviceUtils {
  Future<String?> getPlatformVersion() {
    return SmartDeviceUtilsPlatform.instance.getPlatformVersion();
  }
}
