import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  var subtitle;
  SubTitle(this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 20),
      child: Text(
        subtitle,
        style: blogPostSub,
      ),
    );
  }
}
