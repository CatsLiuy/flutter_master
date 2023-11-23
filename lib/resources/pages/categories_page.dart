import 'package:flutter/material.dart';
import 'package:flutter_master/resources/widgets/safearea_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends NyState<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeAreaWidget(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: afterLoad(
                  child: () => ListView(
                        shrinkWrap: true,
                        children: [],
                      )))
        ],
      )),
    );
  }
}
