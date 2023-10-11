import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'screen_time_api_ios_method_channel.dart';

abstract class ScreenTimeApiIosPlatform extends PlatformInterface {
  /// Constructs a ScreenTimeApiIosPlatform.
  ScreenTimeApiIosPlatform() : super(token: _token);

  static final Object _token = Object();

  static ScreenTimeApiIosPlatform _instance = MethodChannelScreenTimeApiIos();

  /// The default instance of [ScreenTimeApiIosPlatform] to use.
  ///
  /// Defaults to [MethodChannelScreenTimeApiIos].
  static ScreenTimeApiIosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ScreenTimeApiIosPlatform] when
  /// they register themselves.
  static set instance(ScreenTimeApiIosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
