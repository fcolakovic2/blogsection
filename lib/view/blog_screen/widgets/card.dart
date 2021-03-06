import 'package:blog/providers/page_index.dart';
import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:blog/utils/shared/animations.dart';
import 'package:blog/utils/style/styles.dart';
import 'package:blog/view/blog_post/pages/blog_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CardWidget extends StatefulWidget {
  String title, subtitle, category;
  int index;
  var text;
  CardWidget(this.category, this.index);
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
          // controllers.changeUpdateStatus(true);

          Navigator.of(context).push(
            createRouteToLeft(
              BlogPost(widget.text, widget.index, widget.category),
            ),
          );
        },
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
                    color: Colors.grey[300],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(lista[widget.index]),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, top: 15.0, bottom: 8.0),
                      child: Text(
                        "${listaTitle[widget.index][0].toUpperCase()}${listaTitle[widget.index].substring(1)}",
                        style: cardTitleStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        "${listaTitle[widget.index][0].toUpperCase()}${listaTitle[widget.index].substring(1)}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: cardSubTitleStyle,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
