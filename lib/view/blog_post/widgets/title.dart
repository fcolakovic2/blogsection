import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Titlee extends StatelessWidget {
  var title;
  Titlee(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, right: 20),
      child: Text(
        "${title[0].toUpperCase()}${title.substring(1)}",
        style: appBarText,
      ),
    );
  }
}
