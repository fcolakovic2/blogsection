import 'package:blog/view/blog_post/widgets/icon_back.dart';
import 'package:blog/view/blog_post/widgets/icon_heart.dart';
import 'package:blog/view/blog_post/widgets/icon_share.dart';
import 'package:flutter/material.dart';

AppBar appBarCustom2(context) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
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
  );
}
