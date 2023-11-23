import 'package:flutter_master/resources/pages/app_page.dart';
import 'package:flutter_master/resources/pages/flutter_page.dart';
import 'package:flutter_master/resources/pages/shop_page.dart';

import 'package:nylo_framework/nylo_framework.dart';

/*
|--------------------------------------------------------------------------
| App Router
|
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "dart run nylo_framework:main make:page profile_page"
| Learn more https://nylo.dev/docs/5.x/router
|--------------------------------------------------------------------------
*/

appRouter() => nyRoutes((router) {
  router.route(FlutterPage.path, (context) => FlutterPage());
  router.route(ShopPage.path, (context) => ShopPage());
  router.route(AppPage.path, (context) => AppPage(), initialRoute: true);

});