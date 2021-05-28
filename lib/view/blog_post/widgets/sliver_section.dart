import 'package:blog/view/blog_post/widgets/appbar.dart';
import 'package:blog/view/blog_post/widgets/icon_back.dart';
import 'package:blog/view/blog_post/widgets/icon_heart.dart';
import 'package:blog/view/blog_post/widgets/icon_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliverSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // appBarCustom2(),
        SliverAppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: IconBack(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: IconShare(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      child: IconHeart(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            child: Container(),
            preferredSize: Size(0, 20),
          ),
          pinned: false,
          expandedHeight: ScreenUtil().setHeight(353),
          flexibleSpace: Stack(
            children: [
              Positioned(
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://media.istockphoto.com/photos/top-view-table-full-of-food-picture-id1220017909?k=6&m=1220017909&s=170667a&w=0&h=Zy_NqTbEluSW0T667IHW7DVlpQih70V45k-rgeFt6Oo=",
                    ),
                  ),
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0),
              Positioned(
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                ),
                bottom: -1,
                left: 0,
                right: 0,
              ),
            ],
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ],
    );
  }
}
