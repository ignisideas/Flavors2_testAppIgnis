import 'package:flutter/material.dart';
import 'firebase/uat/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app_config.dart';
import 'home.dart';

void main() async {
  // 1

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  const configuredApp = AppConfig(
    child: MyApp(),
    // 2
    environment: Environment.uat,
    // 3
    appTitle: '[UAT] BuzzwordBingo',
  );
  // 4
  runApp(configuredApp);
}
