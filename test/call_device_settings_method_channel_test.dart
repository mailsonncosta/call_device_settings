import 'package:call_device_settings/bridge/call_device_settings_method_channel.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MethodChannelCallDeviceSettings platform = MethodChannelCallDeviceSettings();
  const MethodChannel channel = MethodChannel('call_device_settings');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'successful';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('callNativeSettings', () async {
    expect(await platform.callNativeSettings(path: 'date'), true);
  });
}
