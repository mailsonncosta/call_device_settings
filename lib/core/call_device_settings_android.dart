part of 'call_device_settings.dart';

class CallDeviceSettingsAndroid extends CallDeviceSettings {
  const CallDeviceSettingsAndroid();


  /// Open Android settings.
  Future<bool> call(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Wi-Fi` section.
  Future<bool> wifi(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('WIFI_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `NFC` section.
  Future<bool> nfc(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('NFC_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Data & Roaming` section.
  Future<bool> dataRoaming(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('DATA_ROAMING_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Location` section.
  Future<bool> locationSource(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('LOCATION_SOURCE_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `App Settings` section.
  Future<bool> appSettings(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('APPLICATION_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Bluetooth` section.
  Future<bool> bluetooth(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('BLUETOOTH_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Notification` section.
  Future<bool> notification(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('NOTIFICATION_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Security` section.
  Future<bool> security(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('SECURITY_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Sound` section.
  Future<bool> sound(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('SOUND_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Display` section.
  Future<bool> display(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('DISPLAY_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Date` section.
  Future<bool> date(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('DATE_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Device Info` section.
  Future<bool> deviceInfo(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('DEVICE_INFO_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Internal Storage` section.
  Future<bool> internalStorage(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('INTERNAL_STORAGE_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Memory Card` section.
  Future<bool> memoryCard(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('MEMORY_CARD_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Accessibility` section.
  Future<bool> accessibility(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('ACCESSIBILITY_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Add Account` section.
  Future<bool> addAccount(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('ADD_ACCOUNT_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Airplane Mode` section.
  Future<bool> airplaneMode(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('AIRPLANE_MODE_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Apn Settings` section.
  Future<bool> apnSettings(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('APN_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Application Details` section.
  Future<bool> applicationDetails(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('APPLICATION_DETAILS_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Application Development` section.
  Future<bool> applicationDevelopment(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('APPLICATION_DEVELOPMENT_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Application Notification` section.
  Future<bool> applicationNotification(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('APPLICATION_NOTIFICATION_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Application Settings` section.
  Future<bool> applicationSettings(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('APPLICATION_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Application Write Settings` section.
  Future<bool> applicationWriteSettings(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('APPLICATION_WRITE_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Battery Saver` section.
  Future<bool> batterySaver(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('BATTERY_SAVER_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Captioning` section.
  Future<bool> captioning(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('CAPTIONING_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Cast` section.
  Future<bool> cast(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('CAST_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Data Usage` section.
  Future<bool> dataUsage(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('DATA_USAGE_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `App Notification Bubble` section.
  Future<bool> appNotificationBubble(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('APP_NOTIFICATION_BUBBLE_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `App Notification` section.
  Future<bool> appNotification(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('APP_NOTIFICATION_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Search` section.
  Future<bool> search(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('SEARCH_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Biometric Enroll` section.
  Future<bool> biometricEnroll(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('BIOMETRIC_ENROLL'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `HardKeyboard` section.
  Future<bool> hardwareKeyboard(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('HARD_KEYBOARD_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Home` section.
  Future<bool> home(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('HOME_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Ignore Background Data Restrictions` section.
  Future<bool> ignoreBackgroundDataRestrictions(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Ignore Battery Optimization` section.
  Future<bool> ignoreBatteryOptimization(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('IGNORE_BATTERY_OPTIMIZATION_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Input Method` section.
  Future<bool> inputMethod(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('INPUT_METHOD_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Input Method Subtype` section.
  Future<bool> inputMethodSubtype(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('INPUT_METHOD_SUBTYPE_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Locale` section.
  Future<bool> locale(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('LOCALE_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Manage All Applications` section.
  Future<bool> manageAllApplications(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('MANAGE_ALL_APPLICATIONS_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Manage Application` section.
  Future<bool> manageApplication(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('MANAGE_APPLICATIONS_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Manage Default Apps` section.
  Future<bool> manageDefaultApps(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('MANAGE_DEFAULT_APPS_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Manage External Sources` section.
  Future<bool> manageExternalSources(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('MANAGE_EXTERNAL_SOURCES_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open Android settings in `Manage Overlay` section.
  Future<bool> manageOverlay(Function? onCompletion) {
    return callNativeSettings(path: _androidSettings('MANAGE_OVERLAY_PERMISSION'), onCompletion: onCompletion,);
  }

  String _androidSettings(String path) {
    return 'android.settings.$path';
  }

}