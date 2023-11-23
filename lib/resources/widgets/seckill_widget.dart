import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master/app/models/goods.dart';
import 'package:flutter_master/app/models/storey.dart';
import 'package:flutter_master/bootstrap/helpers.dart';
import 'package:flutter_master/resources/widgets/cached_image_widget.dart';
import 'package:flutter_master/resources/widgets/countdown_timer_widget.dart';
import 'package:flutter_master/resources/widgets/goods_list_widget.dart';
import 'package:slide_countdown/slide_countdown.dart';

class SeckillWidget extends StatelessWidget {
  final Storey storeyData;
  final List<Goods> goodsList;

  const SeckillWidget(
      {Key? key, required this.storeyData, required this.goodsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String hintText = "距离开始仅剩";
    String promotionStatus = 'ONGOING';
    int countdown = 0;
    String startTime = '00:00';
    if (goodsList != null && goodsList.length > 0) {
      Goods goods = goodsList[0];
      List<dynamic> labelList = goods.labelList ?? [];
      if (labelList != null && labelList.length > 0) {
        labelList.forEach((label) {
          if (label.labelType == 'SECKILL') {
            promotionStatus = label.promotionStatus;
            countdown = label.countdown ~/ 1000;
            startTime = label.startTime;
          }
          if (label.labelType == 'ONGOING') {
            hintText = '距离结束仅剩';
          }
        });
      }
    }
    // return Container(
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.all(Radius.circular(20)),
    // ),child: Column(children: [
    //   Text(storeyData.remark.toString()),
    //   _titleWidget(),
    //   GoodsListWidget(type: storeyData.storeyType??'',goodsList: goodsList,)
    // ],));
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: new DecorationImage(
              fit: BoxFit.fitWidth,
              image:
                  new NetworkImage(checkImagePath('/miniapp/seckill-bg.png')),
            ),
          ),
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CachedImageWidget(
                      image: checkImagePath(''),
                      fit: BoxFit.contain,
                    ),
                    Row(
                      children: [
                        Text(
                          '$hintText',
                          style: TextStyle(color: Colors.white),
                        ),
                        // TimerCountdown(
                        //   format: CountDownTimerFormat.daysHoursMinutesSeconds,
                        //   endTime: DateTime.now().add(
                        //     Duration(
                        //       days: countdown ~/ 3600 ~/ 24,
                        //       hours: countdown ~/ 3600 % 24,
                        //       minutes: countdown % 3600 ~/ 60,
                        //       seconds: countdown % 60,
                        //     ),
                        //   ),
                        // ),
                        SlideCountdownSeparated(
                          duration: Duration(
                            days: countdown ~/ 3600 ~/ 24,
                            hours: countdown ~/ 3600 % 24,
                            minutes: countdown % 3600 ~/ 60,
                            seconds: countdown % 60,
                          ),
                          slideDirection: SlideDirection.none,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        ),
                        Text(
                          '  >  ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: GoodsListWidget(
                  type: storeyData.storeyType ?? '',
                  goodsList: goodsList,
                ),
              )
            ],
          )),
    );
  }
}
