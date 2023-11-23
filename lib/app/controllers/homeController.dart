import 'package:flutter/material.dart';
import 'package:flutter_master/app/controllers/controller.dart';
import 'package:flutter_master/app/networking/shop_service.dart';

class HomeController extends Controller {

  ShopService _apiService = ShopService();

  @override
  construct(BuildContext context) {
    super.construct(context);
  }

  onTapDocumentation() async {
    // await launchUrl(Uri.parse("https://nylo.dev/docs"));
  }

  onTapGithub() async {
    // await launchUrl(Uri.parse("https://github.com/nylo-core/nylo"));
  }

  onTapChangeLog() async {

    // await _apiService.getAlert();
    // await _apiService.getHeader();
    // await _apiService.getBanner();
    // await _apiService.getStorey();

  }

}