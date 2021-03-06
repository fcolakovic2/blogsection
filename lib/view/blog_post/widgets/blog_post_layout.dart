import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:blog/view/blog_post/widgets/scrollable.dart';
import 'package:blog/utils/style/styles.dart';
import 'package:blog/view/blog_post/widgets/category.dart';
import 'package:blog/view/blog_post/widgets/circle_avatar_and_text.dart';
import 'package:blog/view/blog_post/widgets/rounded_corner_image.dart';
import 'package:blog/view/blog_post/widgets/social_icons.dart';
import 'package:blog/view/blog_post/widgets/subtitle.dart';
import 'package:blog/view/blog_post/widgets/title.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlogPostLayout extends StatefulWidget {
  var text, index, category;
  BlogPostLayout(this.text, this.index, this.category);
  @override
  _BlogPostLayoutState createState() => _BlogPostLayoutState();
}

class _BlogPostLayoutState extends State<BlogPostLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Category(widget.category),
          Titlee(listaTitle[widget.index]),
          SubTitle(listaSubtitle[widget.index]),
          CircleAvatarAndText(widget.index),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, right: 20),
            child: Text(
              listaText[0],
              style: avatarByWho,
            ),
          ),
          RoundedCornerImage(widget.index),
          Padding(
            padding: const EdgeInsets.only(bottom: 45.0, right: 20),
            child: Text(
              listaText[1],
              style: avatarByWho,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, right: 20),
            child: Text(
              listaText[2],
              style: avatarByWho,
            ),
          ),
          RoundedCornerImage(widget.index),
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0, right: 20),
            child: Text(
              listaText[3],
              style: avatarByWho,
            ),
          ),
          SocialIcons(),
          RelatedPosts(),
        ],
      ),
    );
  }
}
