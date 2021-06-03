import 'package:blog/utils/style/styles.dart';
import 'package:blog/view/blog_post/widgets/icon_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appBarCustom3(text) {
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
        Container(
          child: Text(
            text,
            style: appBarText,
          ),
        ),
        Container(
          width: 39.sp,
        ),
      ],
    ),
  );
}
