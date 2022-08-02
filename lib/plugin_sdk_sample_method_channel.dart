import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_sdk_sample_platform_interface.dart';

/// An implementation of [PluginSdkSamplePlatform] that uses method channels.
class MethodChannelPluginSdkSample extends PluginSdkSamplePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_sdk_sample');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
