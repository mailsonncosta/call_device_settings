import 'package:call_device_settings/bridge/call_device_settings_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// An implementation of [CallDeviceSettingsPlatform] that uses method channels.
class MethodChannelCallDeviceSettings extends CallDeviceSettingsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('call_device_settings');

  @override
  Future<bool> callNativeSettings({
    required String path,
    Function? onCompletion,
  }) async {
    try {
      String? success = await methodChannel
          .invokeMethod("openDeviceSettings", {"path": path});
      if (success?.isNotEmpty == true) {
        if (onCompletion != null) onCompletion();
      }
      return true;
    } on PlatformException catch (exception) {
      debugPrintStack(
        label: "PlatformException",
        stackTrace: StackTrace.fromString(exception.stacktrace ?? ''),
      );
      return false;
    } on Exception catch (exception) {
      debugPrintStack(
        label: "Exception",
        stackTrace: StackTrace.fromString(exception.toString()),
      );
      return false;
    }
  }
}
