library call_device_settings;

import 'dart:io';

import 'package:call_device_settings/bridge/call_device_settings_platform_interface.dart';

part 'call_device_settings_android.dart';
part 'call_device_settings_ios.dart';

class CallDeviceSettings {

  const CallDeviceSettings();

  const factory CallDeviceSettings.iOS() = CallDeviceSettingsIos;

  const factory CallDeviceSettings.android() = CallDeviceSettingsAndroid;

  static CallDeviceSettings? _build() {
    if (Platform.isAndroid) {
      return const CallDeviceSettings.android();
    } else if (Platform.isIOS) {
      return const CallDeviceSettings.iOS();
    } else {
      return null;
    }
  }

  static final CallDeviceSettings? shared = CallDeviceSettings._build();

  Future<bool> callNativeSettings({
    required String path,
    Function? onCompletion,
  }) {
    return CallDeviceSettingsPlatform.instance.callNativeSettings(path: path, onCompletion: onCompletion,);
  }
}