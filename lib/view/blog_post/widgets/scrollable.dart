import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RelatedPosts extends StatefulWidget {
  @override
  _RelatedPostsState createState() => _RelatedPostsState();
}

class _RelatedPostsState extends State<RelatedPosts> {
  void initState() {
    cardsListToShuffle.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0, top: .0, bottom: 25.0),
            child: Text("Related posts", style: relatedposts),
          ),
          Container(
            height: ScreenUtil().setHeight(434),
            child: NotificationListener<OverscrollIndicatorNotification>(
              // ignore: missing_return
              onNotification: (overscroll) {
                overscroll.disallowGlow();
              },
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardsListToShuffle.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Container(
                      width: ScreenUtil().setWidth(300),
                      child: cardsListToShuffle[index],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
