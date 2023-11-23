import 'package:flutter/material.dart';
import 'package:flutter_master/app/models/banner.dart';
import 'package:flutter_master/app/models/navigator.dart';
import 'package:flutter_master/app/models/storey.dart';
import 'package:flutter_master/app/networking/shop_service.dart';
import 'package:flutter_master/resources/widgets/seckill_widget.dart';
import 'package:flutter_master/resources/widgets/storey_widget.dart';
import 'package:flutter_master/resources/widgets/navigation_widget.dart';
import 'package:flutter_master/resources/widgets/safearea_widget.dart';
import 'package:flutter_master/resources/widgets/swiper_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

class DyHomeWidget extends StatefulWidget {
  @override
  _DyHomeWidget createState() => _DyHomeWidget();
}

class _DyHomeWidget extends NyState<DyHomeWidget> {
  ShopService _apiService = ShopService();
  List<Widget> children = [];
  List<BannerData> _bannerList = [];
  List<MobileHead> _navigatorList = [];
  List<Storey> _storeyList = [];

  @override
  boot() async {
    _bannerList = (await _apiService.getBannerList())!;
    _navigatorList = (await _apiService.getNavigatorList())!;
    _storeyList = (await _apiService.getStoreyList())!;
    children.add(SwiperWidget(
      swiperDataList: _bannerList,
    ));
    children.add(
      NavigationWidget(
        navDataList: _navigatorList,
      ),
    );
    if(_storeyList !=null && _storeyList.length > 0){
      _storeyList.forEach((element) {
        if (element.storeyType == 'SECKILL') {
          children.add(
              SeckillWidget(storeyData: element, goodsList: element.goodsList??[]));
        } else {
          children.add(
              StoreyWidget(storeyData: element, goodsList: element.goodsList??[]));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeAreaWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: afterLoad(
                child: () => Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ListView(
                        shrinkWrap: true,
                        children: children,
                      ),
                    )))
      ],
    ));
  }
}
