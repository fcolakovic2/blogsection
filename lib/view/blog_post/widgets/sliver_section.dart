import 'package:blog/view/blog_post/widgets/appbar.dart';
import 'package:blog/view/blog_post/widgets/blog_post_layout.dart';
import 'package:flutter/material.dart';

class SliverSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        appBarCustom2(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: BlogPostLayout(),
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
