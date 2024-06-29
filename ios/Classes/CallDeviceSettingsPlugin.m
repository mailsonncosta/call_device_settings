#import "CallDeviceSettingsPlugin.h"
#if __has_include(<call_device_settings/call_device_settings-Swift.h>)
#import <call_device_settings/call_device_settings-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "call_device_settings-Swift.h"
#endif

@implementation CallDeviceSettingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCallDeviceSettingsPlugin registerWithRegistrar:registrar];
}
@end
