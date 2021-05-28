import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 20),
      child: Text(
        "How to make a full ichiju-sansai meal in less than 30 minutes",
        style: blogPostSub,
      ),
    );
  }
}
