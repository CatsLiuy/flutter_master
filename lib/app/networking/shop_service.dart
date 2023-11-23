import 'package:flutter/material.dart';
import 'package:flutter_master/app/models/banner.dart';
import 'package:flutter_master/app/models/navigator.dart';
import 'package:flutter_master/app/models/storey.dart';
import 'package:flutter_master/app/models/user.dart';
import 'package:flutter_master/app/networking/dio/base_api_service.dart';
import 'package:nylo_framework/nylo_framework.dart';

class ShopService extends BaseApiService {
  ShopService({BuildContext? buildContext}) : super(buildContext);

  @override
  String get baseUrl => getEnv('APP_URL');

  Future<dynamic> getAlert() async {
    dynamic data;
    await network<dynamic>(
        request: (request) => request.get("/index/getAlert"),
        handleSuccess: (Response response) {
          data = response.data;
          print('response  ${data}');
        });
    return data;
  }

  Future<List<BannerData>?> getBannerList() async {
    MobileBannerModel? bannerModel = await network<MobileBannerModel>(
      request: (request) => request.get("/index/mobileBanner"),
    );
    return bannerModel?.succeed == true ? bannerModel?.data : [];
  }

  Future<List<MobileHead>?> getNavigatorList() async {
    BannerHeadModel? headModel = await network<BannerHeadModel>(
        request: (request) => request.get("/index/mobileHeader"));
    return headModel?.succeed == true ? headModel?.data : [];
    ;
  }

  Future<List<Storey>?> getStoreyList() async {
    StoreyModel? storeyModel = await network<StoreyModel>(
        request: (request) => request.get("/index/mobileStorey"),
        headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzUxMiJ9.eyJleHBhbmRQYXJhbSI6bnVsbCwicm9sZSI6IjIiLCJjcmVhdGVkIjoxNzAwNjI5NTUxODM2LCJpcCI6IjExMy4xMzIuNjcuNzciLCJ1c2VyVHlwZSI6IkFHRU5DWV9VU0VSIiwiZXhwIjoxNzA0NTE3NTUxLCJ1c2VySWQiOjEwMjI2MCwidXNlcm5hbWUiOiLopb_lronngZ7moaXnq6XlpKfnjonkuK3ljLvor4rmiYAifQ.CLLZ4tngz7lBWOMzuQVsSLFUuBph9nLMYi35wGWfmmxhulFerJDkbsDMt2_AbjWXX1Zkf0niWELKbzEoAiPpag",
          // "appType": "App"
        });
    return storeyModel?.succeed == true ? storeyModel?.data : [];
  }
}
