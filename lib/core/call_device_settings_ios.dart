part of 'call_device_settings.dart';

class CallDeviceSettingsIos extends CallDeviceSettings {
  const CallDeviceSettingsIos();


  /// Open iOS settings.
  Future<bool> call() => settings(null);

  /// Open iOS settings in `Wi-Fi` section.
  Future<bool> wifi(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('WIFI'), onCompletion: onCompletion,);
  }

  /// Open iOS settings.
  Future<bool> settings(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs(''), onCompletion: onCompletion,);
  }

  /// Open the app settings.
  Future<bool> appSettings(Function? onCompletion) {
    return callNativeSettings(path: 'app-settings:', onCompletion: onCompletion,);
  }

  /// Open iOS settings in `About` section.
  Future<bool> about(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('General&path=About'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in accessibility section.
  Future<bool> accessibility(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('ACCESSIBILITY'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Account Settings` section.
  Future<bool> accountSettings(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('ACCOUNT_SETTINGS'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in auto lock section.
  Future<bool> autoLock(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('DISPLAY&path=AUTOLOCK'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Battery` section.
  Future<bool> battery(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('BATTERY_USAGE'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Bluetooth` section.
  Future<bool> bluetooth(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('Bluetooth'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Date & Time` section.
  Future<bool> dateAndTime(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('General&path=DATE_AND_TIME'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `FaceID and Passcode` section.
  Future<bool> faceIDAndPasscode(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('TOUCHID_PASSCODE'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Cellular` section.
  Future<bool> cellular(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('MOBILE_DATA_SETTINGS_ID'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Dictionary` section.
  Future<bool> dictionary(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('General&path=DICTIONARY'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Display & Brightness` section.
  Future<bool> displayAndBrightness(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('DISPLAY'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `FaceTime` section.
  Future<bool> facetime(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('FACETIME'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `General` section.
  Future<bool> general(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('General'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in HealthKit section.
  Future<bool> healthKit(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('HEALTH&path=SOURCES'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in iCloud section.
  Future<bool> iCloud(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('CASTLE'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in Music section.
  Future<bool> music(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('MUSIC'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in Keyboard section.
  Future<bool> keyboard(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('General&path=Keyboard'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in Keyboards section.
  Future<bool> keyboards(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('General&path=Keyboard/KEYBOARDS'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Language & Region` section.
  Future<bool> languageAndRegion(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('General&path=INTERNATIONAL'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Location Service` section.
  Future<bool> locationServices(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('LOCATION_SERVICES'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Personal Hotspot` section.
  Future<bool> personalHotspot(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('INTERNET_TETHERING'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Phone` section.
  Future<bool> phone(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('Phone'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Photos & Camera` section.
  Future<bool> photosAndCamera(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('Photos'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Privacy` section.
  Future<bool> privacy(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('Privacy'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Profiles and Device Management` section.
  Future<bool> profilesAndDeviceManagement(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('General&path=ManagedConfigurationList'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Software Update` section.
  Future<bool> softwareUpdate(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('General&path=SOFTWARE_UPDATE_LINK'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Storage and Backup` section.
  Future<bool> storageAndBackup(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('CASTLE&path=STORAGE_AND_BACKUP'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Siri` section.
  Future<bool> siri(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('SIRI'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Sounds & Haptics` section.
  Future<bool> soundsAndHaptics(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('Sounds'), onCompletion: onCompletion,);
  }

  /// Open iOS settings in `Wallpapers` section`
  Future<bool> wallpapers(Function? onCompletion) {
    return callNativeSettings(path: _appPrefs('Wallpaper'), onCompletion: onCompletion,);
  }

  String _appPrefs(String path) {
    return 'App-prefs:$path';
  }

}