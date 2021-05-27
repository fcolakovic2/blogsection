import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';

AppBar appBarCustom(text) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    title: Container(
      child: Text(
        text,
        style: appBarText,
      ),
    ),
  );
}
