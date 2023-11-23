import 'package:flutter/material.dart';
import 'package:flutter_master/app/models/goods.dart';
import 'package:flutter_master/app/models/storey.dart';
import 'package:flutter_master/resources/widgets/goods_list_widget.dart';

class StoreyWidget extends StatelessWidget {
  final Storey storeyData;
  final List<Goods> goodsList;

  const StoreyWidget(
      {Key? key, required this.storeyData, required this.goodsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? storeyType = storeyData.storeyType;
    Color color = Color.fromRGBO(253, 234, 233, 1);
    Color fontColor = Colors.red;
    if (storeyType == 'EXCHANGE') {
      color = Color.fromRGBO(255, 243, 232, 1);
      fontColor = Color.fromRGBO(255, 116, 41, 1);
    }
    if (storeyType == 'BARGAIN') {
      color = Color.fromRGBO(253, 234, 233, 1);
    }
    if (storeyType == 'ZY_GROUP') {
      color = Color.fromRGBO(250, 237, 220, 1);
      fontColor = Color.fromRGBO(194, 98, 19, 1);
    }
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              //渐变位置
              begin: Alignment.topCenter, //右上
              end: Alignment.bottomCenter, //左下
              stops: [0.0, 0.2], //[渐变起始点, 渐变结束点]
              //渐变颜色[始点颜色, 结束颜色]
              colors: [color, Colors.white])),
      child: Column(
        children: [
          _titleWidget(context, color, fontColor),
          GoodsListWidget(
            type: storeyData.storeyType ?? '',
            goodsList: goodsList,
          )
        ],
      ),
    );
  }

  // 商品楼层标题
  Widget _titleWidget(BuildContext context, Color color, Color fontColor) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(storeyData.storeyTypeDesc.toString(),
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w600)),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: fontColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        // topRight: Radius.circular(ScreenUtil().setWidth(25)),
                        bottomRight: Radius.circular(25),
                      )),
                  alignment: Alignment.center,
                  child: Text(
                    storeyData.remark.toString(),
                    style: TextStyle(color: Colors.white),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                // PageSkipConfig.pageSkip(context, storeyData['pageType'] ?? '', storeyData['storeyTypeDesc'] ?? '', storeyData['storeyLink'] ?? '');
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '查看更多',
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ));
  }
}
