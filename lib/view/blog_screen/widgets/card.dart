import 'package:blog/utils/shared/animations.dart';
import 'package:blog/utils/style/styles.dart';
import 'package:blog/view/blog_post/pages/blog_post.dart';
import 'package:blog/view/blog_screen/widgets/future_builder_image.dart';
import 'package:blog/view_model/get_requests_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                buildFutureImage(widget.index),
                futureBuilderTitle(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FutureBuilder futureBuilderTitle() {
    return FutureBuilder<dynamic>(
      future: GetRequestsViewModel().getDataParagraphsViewModel(),
      builder: (BuildContext context, var snapshot) {
        if (snapshot.hasData) {
          widget.text = snapshot.data;
          var pom = snapshot.data[0].split(" ");
          widget.title = pom[0] +
              " " +
              " " +
              pom[1] +
              " " +
              " " +
              pom[2] +
              " " +
              " " +
              pom[3];
          widget.subtitle = snapshot.data[0].substring(0, 120);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
