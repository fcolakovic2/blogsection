import 'package:blog/view/blog_post/widgets/appbar.dart';
import 'package:blog/view/blog_post/widgets/blog_post_layout.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliverSection extends StatelessWidget {
  var text, index, category;
  SliverSection(this.text, this.index, this.category);
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      // ignore: missing_return
      onNotification: (overscroll) {
        overscroll.disallowGlow();
      },
      child: CustomScrollView(
        slivers: <Widget>[
          appBarCustom2(index),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int indexa) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: BlogPostLayout(text, index, category),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
