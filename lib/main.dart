import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Authentication_Scr/login.dart';

void main() {
  // runApp(DevicePreview(
  //   builder: (context) => const MyApp(),
  //   enabled: !kReleaseMode,
  // )) ;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
