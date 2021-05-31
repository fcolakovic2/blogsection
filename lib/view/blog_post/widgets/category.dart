import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  var category;
  Category(this.category);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, right: 20),
      child: Text(
        category,
        style: blogPostCategory,
      ),
    );
  }
}
