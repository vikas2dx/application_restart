#import "ApplicationRestartPlugin.h"
#if __has_include(<application_restart/application_restart-Swift.h>)
#import <application_restart/application_restart-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "application_restart-Swift.h"
#endif

@implementation ApplicationRestartPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftApplicationRestartPlugin registerWithRegistrar:registrar];
}
@end
