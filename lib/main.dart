import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_firebase/Authentication/email_auth.dart';
import 'package:todo_firebase/wrapper.dart';

import 'Authentication_Scr/login.dart';

void main() async {
  // runApp(DevicePreview(
  //   builder: (context) => const MyApp(),
  //   enabled: !kReleaseMode,
  // )) ;
  WidgetsFlutterBinding.ensureInitialized() ;
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      initialData: null,
      value: EmailPasswordAuth().getUserStatus,
      child:  MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal 
        ),
        home: Wrapper(),
      ),
    );
  }
}
