import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_sdk_sample_method_channel.dart';

abstract class PluginSdkSamplePlatform extends PlatformInterface {
  /// Constructs a PluginSdkSamplePlatform.
  PluginSdkSamplePlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginSdkSamplePlatform _instance = MethodChannelPluginSdkSample();

  /// The default instance of [PluginSdkSamplePlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginSdkSample].
  static PluginSdkSamplePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginSdkSamplePlatform] when
  /// they register themselves.
  static set instance(PluginSdkSamplePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
