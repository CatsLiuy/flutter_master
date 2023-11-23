import 'package:flutter_master/app/controllers/flutter_controller.dart';
import 'package:flutter_master/app/models/banner.dart';
import 'package:flutter_master/app/models/navigator.dart';
import 'package:flutter_master/app/models/storey.dart';
import 'package:flutter_master/app/networking/shop_service.dart';

import '/app/models/user.dart';
import '/app/networking/dio/base_api_service.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/networking/flutter_service.dart';

/*
|--------------------------------------------------------------------------
| Model Decoders
| -------------------------------------------------------------------------
| Model decoders are used in 'app/networking/' for morphing json payloads
| into Models.
|
| Learn more https://nylo.dev/docs/5.x/decoders#model-decoders
|--------------------------------------------------------------------------
*/

final Map<Type, dynamic> modelDecoders = {
  List<User>: (data) => List.from(data).map((json) => User.fromJson(json)).toList(),
  // List<BannerData>: (data) => List.from(data).map((json) => BannerData.fromJson(json)).toList(),
  //
  User: (data) => User.fromJson(data),
  MobileBannerModel: (data) => MobileBannerModel.fromJson(data),
  BannerHeadModel: (data) => BannerHeadModel.fromJson(data),
  StoreyModel: (data) => StoreyModel.fromJson(data),

  // User: (data) => User.fromJson(data),
};

/*
|--------------------------------------------------------------------------
| API Decoders
| -------------------------------------------------------------------------
| API decoders are used when you need to access an API service using the
| 'api' helper. E.g. api<MyApiService>((request) => request.fetchData());
|
| Learn more https://nylo.dev/docs/5.x/decoders#api-decoders
|--------------------------------------------------------------------------
*/

final Map<Type, BaseApiService> apiDecoders = {
  FlutterService: FlutterService(),
  ShopService: ShopService(),
  // ...
};


/*
|--------------------------------------------------------------------------
| Controller Decoders
| -------------------------------------------------------------------------
| Controller are used in pages.
| E.g. NyPage<MyController>
|
| Learn more https://nylo.dev/docs/5.x/controllers#using-controllers-with-ny-page
|--------------------------------------------------------------------------
*/
final Map<Type, BaseController> controllers = {
  FlutterController: FlutterController(),
  // ShopController: ShopController(),

  // ...

};

