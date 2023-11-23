

import 'package:flutter/material.dart';
import 'package:flutter_master/resources/widgets/dy_theme_widget.dart';

class AppPage extends StatefulWidget {
  static String path = '/app';
  AppPage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<AppPage> {
  _HomePageState();

  @override
  Widget build(BuildContext context) {
    Widget theme = DyThemeWiget();
    return theme;
  }
}