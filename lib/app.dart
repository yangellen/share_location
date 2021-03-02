import 'package:flutter/material.dart';
import 'main_tab_controller.dart';

class App extends StatelessWidget {
  final title;

  App({this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(), title: title, home: MainTabController());
  }
}
