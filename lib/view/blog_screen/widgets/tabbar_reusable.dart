import 'package:blog/view/blog_screen/widgets/tabbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox tabBarReusable(ordersList) {
  return SizedBox(
    height: ScreenUtil().setHeight(70),
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(81),
        child: Container(
          child: TabBarCustom(ordersList),
        ),
      ),
    ),
  );
}
