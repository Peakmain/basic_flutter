import 'dart:io';

import 'package:example/ui_widget.dart';
import 'package:example/utils_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peakmain_flutter/peakmain_flutter.dart';

void main() {
  runApp(const MyApp());
  // 全局亮色模式配置（浅色背景）
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // 透明背景（配合AppBar使用）
      statusBarIconBrightness: Brightness.dark, // 深色图标（适用于浅色背景）
      statusBarBrightness: Brightness.light, // 控制状态栏文本颜色（iOS专属）
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            //UI组件
            SliverToBoxAdapter(
              child: UiWidget(),
            ),
            //工具组件
            SliverToBoxAdapter(
              child: UtilsWidget(),
            )
          ],
        ),
      )),
    );
  }
}
