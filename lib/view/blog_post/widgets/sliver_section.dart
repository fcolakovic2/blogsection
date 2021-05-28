import 'package:blog/view/blog_post/widgets/appbar.dart';
import 'package:blog/view/blog_post/widgets/icon_back.dart';
import 'package:blog/view/blog_post/widgets/icon_heart.dart';
import 'package:blog/view/blog_post/widgets/icon_share.dart';
import 'package:flutter/material.dart';

class SliverSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        appBarCustom2(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text("Item ${index}")),
            childCount: 100,
          ),
        ),
      ],
    );
  }
}
