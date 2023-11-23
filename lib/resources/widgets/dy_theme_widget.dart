import 'package:flutter/material.dart';
import 'package:flutter_master/app/models/bottom_nav_item.dart';
import 'package:flutter_master/resources/pages/car_page.dart';
import 'package:flutter_master/resources/pages/categories_page.dart';
import 'package:flutter_master/resources/pages/my_page.dart';
import 'package:flutter_master/resources/widgets/app_loader_widget.dart';
import 'package:flutter_master/resources/widgets/dy_home_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

class DyThemeWiget extends StatefulWidget {
  // DyThemeWiget(
  //     {Key? key, required this.globalKey})
  //     : super(key: key);
  // final GlobalKey globalKey;

  @override
  _DyThemeWigetState createState() => _DyThemeWigetState();
}

class _DyThemeWigetState extends State<DyThemeWiget> {
  Widget? activeWidget;

  int _currentIndex = 0;
  List<BottomNavItem>? allNavWidgets;

  @override
  void initState() {
    super.initState();

    activeWidget = DyHomeWidget();
    _loadTabs();
  }

  _loadTabs() async {
    allNavWidgets = await bottomNavWidgets();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activeWidget,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: allNavWidgets == null
          ? AppLoaderWidget()
          : BottomNavigationBar(
              onTap: (currentIndex) =>
                  _changeMainWidget(currentIndex, allNavWidgets!),
              currentIndex: _currentIndex,
              unselectedItemColor: Colors.black54,
              fixedColor: Colors.black87,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(color: Colors.black),
              unselectedLabelStyle: TextStyle(
                color: Colors.black87,
              ),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items:
                  allNavWidgets!.map((e) => e.bottomNavigationBarItem).toList(),
            ),
    );
  }

  Future<List<BottomNavItem>> bottomNavWidgets() async {
    List<BottomNavItem> items = [];
    items.add(
      BottomNavItem(
          id: 1,
          bottomNavigationBarItem: BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'.tr(),
          ),
          tabWidget: DyHomeWidget()),
    );

    items.add(
      BottomNavItem(
          id: 2,
          bottomNavigationBarItem: BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories'.tr(),
          ),
          tabWidget: CategoriesPage()),
    );

    items.add(BottomNavItem(
      id: 4,
      bottomNavigationBarItem: BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'Cart'.tr(),
      ),
      tabWidget: CarPage(),
    ));

    // if (AppHelper.instance.appConfig!.wpLoginEnabled == 1) {
    items.add(BottomNavItem(
      id: 5,
      bottomNavigationBarItem: BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Mine'.tr(),
      ),
      tabWidget: (MyPage()),
    ));
    return items;
  }

  _changeMainWidget(
      int currentIndex, List<BottomNavItem> bottomNavWidgets) async {
    _currentIndex = currentIndex;
    activeWidget = bottomNavWidgets[_currentIndex].tabWidget;
    setState(() {});
  }
}
