import 'package:chinese_font_library/chinese_font_library.dart';
import 'package:dianyitong/views/home_view.dart';
import 'package:dianyitong/views/me_view.dart';
import 'package:dianyitong/views/message_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF30CC9C)),
      ).useSystemChineseFont(Brightness.light),
      home: const MeView(),
    );
  }
}
