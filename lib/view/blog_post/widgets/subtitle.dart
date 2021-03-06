import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubTitle extends StatelessWidget {
  var subtitle;
  SubTitle(this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 20),
      child: Text(
        "${subtitle[0].toUpperCase()}${subtitle.substring(1)}",
        style: blogPostSub,
      ),
    );
  }
}
