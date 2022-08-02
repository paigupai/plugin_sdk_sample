# plugin_sdk_sample

A new Flutter plugin project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## flutter plugin にローカルSDKの導入のやり方

pluginのファイル構成  
sample.aarとsample.framework、sample.xcframeworkはローカルSDK  
※sample.aarとsample.framework、sample.xcframeworkは参考用のモノので、実際に起動できない

    |-- android
        |-- libs
            |-- sample.aar
    |-- ios
        |-- framework
            |-- sample.framework
            |-- sample.xcframework
