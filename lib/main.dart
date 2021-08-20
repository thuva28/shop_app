import 'package:flutter/material.dart';

import 'shared/app_theme.dart';

import 'views/mobile/mobile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wonder Shop',
      debugShowCheckedModeBanner: false,
      theme: appPrimaryTheme(),
      home: MobileScreen(),
    );
  }
}
