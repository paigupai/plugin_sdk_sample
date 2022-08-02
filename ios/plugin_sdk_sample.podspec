#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint plugin_sdk_sample.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'plugin_sdk_sample'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  # ここにローカルフレームワークを記入する、framework、xcframework両方ともサポート
  s.vendored_frameworks = 'framework/*.framework','framework/*.xcframework'
  # iosのシステムframeworkを使用したいの場合、以下に記入する
  # s.ios.framework = 'CFNetwork'
  s.platform = :ios, '9.0'

  # buildする前にscript実行することも可能です
#  s.script_phases = [
#      { :name => 'Hello World', :script => 'echo "Hello World"', :shell_path => '/usr/bin/sh', :execution_position => :before_compile },
#      { :name => 'Hello Ruby World', :script => 'puts "Hello World"', :shell_path => '/usr/bin/ruby' },
#    ]
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
