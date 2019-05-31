import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:swift_plugin/swift_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('swift_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SwiftPlugin.platformVersion, '42');
  });
}
