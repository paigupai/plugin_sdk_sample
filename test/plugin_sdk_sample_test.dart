import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_sdk_sample/plugin_sdk_sample.dart';
import 'package:plugin_sdk_sample/plugin_sdk_sample_platform_interface.dart';
import 'package:plugin_sdk_sample/plugin_sdk_sample_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginSdkSamplePlatform 
    with MockPlatformInterfaceMixin
    implements PluginSdkSamplePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginSdkSamplePlatform initialPlatform = PluginSdkSamplePlatform.instance;

  test('$MethodChannelPluginSdkSample is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginSdkSample>());
  });

  test('getPlatformVersion', () async {
    PluginSdkSample pluginSdkSamplePlugin = PluginSdkSample();
    MockPluginSdkSamplePlatform fakePlatform = MockPluginSdkSamplePlatform();
    PluginSdkSamplePlatform.instance = fakePlatform;
  
    expect(await pluginSdkSamplePlugin.getPlatformVersion(), '42');
  });
}
