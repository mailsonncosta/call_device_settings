import 'package:call_device_settings/bridge/call_device_settings_method_channel.dart';
import 'package:call_device_settings/bridge/call_device_settings_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCallDeviceSettingsPlatform with MockPlatformInterfaceMixin implements CallDeviceSettingsPlatform {

  @override
  Future<bool> callNativeSettings({
    required String path,
    Function? onCompletion,
  }) async {
    switch (path) {
      case 'date':
        return true;
      default:
        return false;
    }
  }

}

void main() {
  final CallDeviceSettingsPlatform initialPlatform = CallDeviceSettingsPlatform.instance;

  test('$MethodChannelCallDeviceSettings is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCallDeviceSettings>());
  });

  test('Testing the native call settings method', () async {
    final mockedPlatform = MockCallDeviceSettingsPlatform();
    CallDeviceSettingsPlatform.instance = mockedPlatform;

    expect(await mockedPlatform.callNativeSettings(path: 'date'), true);
  });
}
