import 'package:flutter/material.dart';
import 'package:flutter_master/app/networking/shop_service.dart';
import 'controller.dart';

class ShopController extends Controller {
  ShopService _apiService = ShopService();
  @override
  construct(BuildContext context) {
    super.construct(context);
  }

  getHomeData() async {
    await _apiService.getAlert();
  }

  onTap() async {

  }
}
