
import 'plugin_sdk_sample_platform_interface.dart';

class PluginSdkSample {
  Future<String?> getPlatformVersion() {
    return PluginSdkSamplePlatform.instance.getPlatformVersion();
  }
}
