import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_sdk_sample/plugin_sdk_sample_method_channel.dart';

void main() {
  MethodChannelPluginSdkSample platform = MethodChannelPluginSdkSample();
  const MethodChannel channel = MethodChannel('plugin_sdk_sample');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
