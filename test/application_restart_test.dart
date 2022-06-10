import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:application_restart/application_restart.dart';

void main() {
  const MethodChannel channel = MethodChannel('application_restart');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });


}
