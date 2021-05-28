import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        "EXPERIENCES",
        style: blogPostCategory,
      ),
    );
  }
}
