// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
//
// import 'call_device_settings_platform_interface.dart';
//
// /// An implementation of [CallDeviceSettingsPlatform] that uses method channels.
// class MethodChannelCallDeviceSettings extends CallDeviceSettingsPlatform {
//   /// The method channel used to interact with the native platform.
//   @visibleForTesting
//   final methodChannel = const MethodChannel('call_device_settings');
//
//   @override
//   Future<String?> getPlatformVersion() async {
//     final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
//     return version;
//   }
// }
