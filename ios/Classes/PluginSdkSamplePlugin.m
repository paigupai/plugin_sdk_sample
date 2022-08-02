#import "PluginSdkSamplePlugin.h"
#if __has_include(<plugin_sdk_sample/plugin_sdk_sample-Swift.h>)
#import <plugin_sdk_sample/plugin_sdk_sample-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugin_sdk_sample-Swift.h"
#endif

@implementation PluginSdkSamplePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginSdkSamplePlugin registerWithRegistrar:registrar];
}
@end
