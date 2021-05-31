import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';

Widget tabElement(index, text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: const EdgeInsets.only(right: 35, bottom: 20),
      child: Text(
        text,
        style: tabList[index] == text ? itemSlider : itemSlider2,
      ),
    ),
  );
}
