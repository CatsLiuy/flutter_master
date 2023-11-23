import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master/bootstrap/helpers.dart';
import 'package:flutter_master/resources/widgets/cached_image_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

class NavigationWidget extends StatelessWidget {
  final List navDataList;

  const NavigationWidget({Key? key, required this.navDataList})
      : super(key: key);

  Widget _navigationItem(item) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            child: CachedImageWidget(
              image: checkImagePath(item.image),
              fit: BoxFit.cover,
            ),
          ),
          Container(child: Text(item.name),margin: EdgeInsets.only(top: 10),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 5,
        children: navDataList.map((item) {
          return _navigationItem(item);
        }).toList(),
      ),
    );
  }
}
