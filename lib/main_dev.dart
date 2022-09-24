import 'package:flutter/material.dart';

import 'app_config.dart';
import 'home.dart';

void main() {
  // 1
  const configuredApp = AppConfig(
    child: MyApp(),
    // 2
    environment: Environment.dev,
    // 3
    appTitle: '[DEV] BuzzwordBingo',
  );
  // 4
  runApp(configuredApp);
}
