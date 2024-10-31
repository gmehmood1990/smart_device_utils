import 'package:flutter_test/flutter_test.dart';
import 'package:smart_device_utils/smart_device_utils.dart';
import 'package:smart_device_utils/smart_device_utils_platform_interface.dart';
import 'package:smart_device_utils/smart_device_utils_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSmartDeviceUtilsPlatform
    with MockPlatformInterfaceMixin
    implements SmartDeviceUtilsPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SmartDeviceUtilsPlatform initialPlatform =
      SmartDeviceUtilsPlatform.instance;

  test('$MethodChannelSmartDeviceUtils is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSmartDeviceUtils>());
  });

  test('getPlatformVersion', () async {
    SmartDeviceUtils smartDeviceUtilsPlugin = SmartDeviceUtils();
    MockSmartDeviceUtilsPlatform fakePlatform = MockSmartDeviceUtilsPlatform();
    SmartDeviceUtilsPlatform.instance = fakePlatform;

    expect(await smartDeviceUtilsPlugin.getPlatformVersion(), '42');
  });
}
