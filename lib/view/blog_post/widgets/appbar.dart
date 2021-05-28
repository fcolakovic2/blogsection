import 'package:blog/view/blog_post/widgets/icon_back.dart';
import 'package:blog/view/blog_post/widgets/icon_heart.dart';
import 'package:blog/view/blog_post/widgets/icon_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appBarCustom2() {
  return SliverAppBar(
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
    bottom: PreferredSize(
      child: Container(),
      preferredSize: Size(0, 20),
    ),
    pinned: false,
    expandedHeight: ScreenUtil().setHeight(353),
    flexibleSpace: Stack(
      children: [
        Positioned(
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://www.teahub.io/photos/full/253-2538486_slider3-restaurant-food-pic-hd.jpg",
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
            bottom: 0),
        Positioned(
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
          ),
          bottom: -1,
          left: 0,
          right: 0,
        ),
      ],
    ),
  );
}
