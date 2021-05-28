import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';

class Titlee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Text(
        "Three Healthy and Easy Japanese Dishes You Can Make at Home",
        style: appBarText,
      ),
    );
  }
}
