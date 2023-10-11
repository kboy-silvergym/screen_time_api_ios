import 'package:flutter_test/flutter_test.dart';
import 'package:screen_time_api_ios/screen_time_api_ios.dart';
import 'package:screen_time_api_ios/screen_time_api_ios_platform_interface.dart';
import 'package:screen_time_api_ios/screen_time_api_ios_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockScreenTimeApiIosPlatform
    with MockPlatformInterfaceMixin
    implements ScreenTimeApiIosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ScreenTimeApiIosPlatform initialPlatform = ScreenTimeApiIosPlatform.instance;

  test('$MethodChannelScreenTimeApiIos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelScreenTimeApiIos>());
  });

  test('getPlatformVersion', () async {
    ScreenTimeApiIos screenTimeApiIosPlugin = ScreenTimeApiIos();
    MockScreenTimeApiIosPlatform fakePlatform = MockScreenTimeApiIosPlatform();
    ScreenTimeApiIosPlatform.instance = fakePlatform;

    expect(await screenTimeApiIosPlugin.getPlatformVersion(), '42');
  });
}
