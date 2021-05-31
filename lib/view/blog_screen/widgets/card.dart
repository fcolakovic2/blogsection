import 'package:blog/utils/shared/animations.dart';
import 'package:blog/utils/style/styles.dart';
import 'package:blog/view/blog_post/pages/blog_post.dart';
import 'package:blog/view_model/get_requests_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CardWidget extends StatefulWidget {
  String title, subtitle, category;
  int index;
  CardWidget(this.title, this.subtitle, this.category, this.index);
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 25),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            createRouteToDown(
              BlogPost(),
            ),
          );
        },
        child: Container(
          child: Card(
            elevation: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildFutureImage(widget.index),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 5.0, top: 15.0, bottom: 8.0),
                  child: Text(
                    widget.title,
                    style: cardTitleStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    widget.subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: cardSubTitleStyle,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  FutureBuilder buildFutureImage(index) {
    return FutureBuilder<dynamic>(
      future: GetRequestsViewModel().getDataImagesViewModel(index),
      builder: (BuildContext context, var snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data["download_url"]);
          return Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().setHeight(158),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(snapshot.data["download_url"])),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
