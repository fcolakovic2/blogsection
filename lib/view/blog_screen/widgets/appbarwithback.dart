import 'package:blog/utils/style/styles.dart';
import 'package:blog/view/blog_post/widgets/icon_back.dart';
import 'package:flutter/material.dart';

AppBar appBarCustom3(text) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            child: IconBack(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Container(
            child: Text(
              text,
              style: appBarText,
            ),
          ),
        ),
      ],
    ),
  );
}
