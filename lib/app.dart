import 'package:chinese_font_library/chinese_font_library.dart';
import 'package:dianyitong/route.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF30CC9C)),
        scaffoldBackgroundColor: Colors.white,
      ).useSystemChineseFont(Brightness.light),
      routerConfig: router,
    );
  }
}
