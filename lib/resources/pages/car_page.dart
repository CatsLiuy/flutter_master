import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class CarPage extends StatefulWidget{
  @override
  _CarPageState createState() => _CarPageState();
}

class _CarPageState extends NyState<CarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('购物车'),),
    );
  }
}