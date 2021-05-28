import 'package:blog/view/blog_post/widgets/icon_back.dart';
import 'package:blog/view/blog_post/widgets/icon_heart.dart';
import 'package:blog/view/blog_post/widgets/icon_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appBarCustom2() {
  return SliverAppBar(
    brightness: Brightness.light,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: IconBack(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: IconShare(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                child: IconHeart(),
              ),
            ),
          ],
        ),
      ],
    ),
    automaticallyImplyLeading: false,
    expandedHeight: ScreenUtil().setHeight(353),
    flexibleSpace: FlexibleSpaceBar(
      background: Image.network(
        "https://media.istockphoto.com/photos/top-view-table-full-of-food-picture-id1220017909?k=6&m=1220017909&s=170667a&w=0&h=Zy_NqTbEluSW0T667IHW7DVlpQih70V45k-rgeFt6Oo=",
        fit: BoxFit.cover,
      ),
    ),
  );
}
