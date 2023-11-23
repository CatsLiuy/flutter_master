import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master/resources/widgets/cached_image_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';

class SwiperWidget extends StatelessWidget {
  final List swiperDataList;

  const SwiperWidget({Key? key, required this.swiperDataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.white,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedImageWidget(
                  image:
                  '${getEnv('APP_ASSET_URL')}/${swiperDataList[index].image}',
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
          itemCount: swiperDataList.length,
          pagination: const SwiperPagination(),
          autoplay: true,
          viewportFraction: 0.8,
          scale: 0.9,
        ),
        height: MediaQuery.of(context).size.height / 5.5,
      )
    );
  }
}
