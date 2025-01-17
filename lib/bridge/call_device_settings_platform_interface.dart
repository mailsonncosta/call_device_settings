import 'package:call_device_settings/bridge/call_device_settings_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class CallDeviceSettingsPlatform extends PlatformInterface {
  /// Constructs a CallDeviceSettingsPlatform.
  CallDeviceSettingsPlatform() : super(token: _token);

  static final Object _token = Object();

  static CallDeviceSettingsPlatform _instance = MethodChannelCallDeviceSettings();

  /// The default instance of [CallDeviceSettingsPlatform] to use.
  ///
  /// Defaults to [MethodChannelCallDeviceSettings].
  static CallDeviceSettingsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CallDeviceSettingsPlatform] when
  /// they register themselves.
  static set instance(CallDeviceSettingsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> callNativeSettings({
    required String path,
    Function? onCompletion,
  });
}
