import 'package:flutter/material.dart';
import 'package:flutter_master/app/models/goods.dart';
import 'package:flutter_master/bootstrap/helpers.dart';
import 'package:flutter_master/resources/widgets/cached_image_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

class GoodsListWidget extends StatelessWidget {
  final String type;
  final List<Goods> goodsList;

  const GoodsListWidget({Key? key, required this.type, required this.goodsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _goodsList(context);
  }

  Widget _goodsItem(Goods goods) {
    List<Widget> children = [];
    children.add(_skuImage(goods.skuImage ?? ''));
    children.add(_skuName(goods.skuName ?? ''));
    if (goods.showPriceTips == 'UN_LOGIN') {
      children.add(_unLogin('登录可见'));
    } else {
      children
          .add(_skuSalePrice(goods.salePrice ?? '', goods.packageUnit ?? ''));
      if (type == 'SECKILL') {
        children.add(_skuCrossedPrice(goods.crossedPrice ?? ''));
        children
            .add(_skuSaleNum(goods.saleNum ?? 0, goods.promotionStockNum ?? 0));
      }
    }
    return InkWell(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12.withOpacity(0.1),
                    spreadRadius: 0.2,
                    blurRadius: 0.5)
              ]),
          child: ListView(
            shrinkWrap: true,
            children: children,
          )),
    );
  }

  Widget _goodsList(context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 4,
          shrinkWrap: true,
          childAspectRatio: type == 'SECKILL' ? 0.75 : 1.2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 10.0,
          primary: false,
          children: List.generate(
            goodsList.length,
            (index) => _goodsItem(goodsList[index]),
          ),
        ),
      ),
    );
  }

  Widget _skuImage(String skuImage) {
    return Container(
      // alignment: Alignment.topCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedImageWidget(
          image: checkImagePath(skuImage),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _skuName(String skuName) {
    return Center(
      child: Text(skuName,
          style: TextStyle(overflow: TextOverflow.ellipsis), maxLines: 1),
    );
  }

  Widget _skuSalePrice(String salePrice, String packageUnit) {
    return Center(
        child: RichText(
            text: TextSpan(children: [
      TextSpan(
        text: '￥$salePrice',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      TextSpan(
        text: '/$packageUnit',
        style: TextStyle(
          color: Colors.black45,
        ),
      ),
    ])));
  }

  Widget _skuCrossedPrice(String crossedPrice) {
    return Center(
      child: Text('￥$crossedPrice').setStyle(TextStyle(
          color: Colors.black, decoration: TextDecoration.lineThrough)),
    );
  }

  Widget _unLogin(String tips) {
    return Center(
        child: Text(
      tips,
    ).setStyle(TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20)));
  }

  Widget _skuSaleNum(int saleNum, int promotionStockNum) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: Color(0xFFFFF4EB),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            shape: BoxShape.rectangle),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'public/assets/images/icon_fire.png',
                  height: 20.0,
                ),
                Text(
                  '已抢$saleNum千克',
                  style: TextStyle(color: Color(0xFFFF2D3D)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                value: saleNum / (saleNum + promotionStockNum),
                valueColor: AlwaysStoppedAnimation(Color(0xFFEE0A24)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
