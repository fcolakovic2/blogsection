import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:cached_network_image/cached_network_image.dart';

class CardWidget extends StatefulWidget {
  String image, title, subtitle, category;
  CardWidget(this.image, this.title, this.subtitle, this.category);
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 25),
      child: Container(
        child: Card(
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().setHeight(158),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(widget.image)),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
              ),
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
    );
  }
}
