import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class MyPage extends StatefulWidget{
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends NyState<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('我的'),),
    );
  }
}