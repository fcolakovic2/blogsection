import 'package:blog/view/blog_post/widgets/scrollable.dart';
import 'package:blog/utils/style/styles.dart';
import 'package:blog/view/blog_post/widgets/category.dart';
import 'package:blog/view/blog_post/widgets/circle_avatar_and_text.dart';
import 'package:blog/view/blog_post/widgets/rounded_corner_image.dart';
import 'package:blog/view/blog_post/widgets/social_icons.dart';
import 'package:blog/view/blog_post/widgets/subtitle.dart';
import 'package:blog/view/blog_post/widgets/title.dart';
import 'package:flutter/material.dart';

class BlogPostLayout extends StatefulWidget {
  var text, index, category;
  BlogPostLayout(this.text, this.index, this.category);
  @override
  _BlogPostLayoutState createState() => _BlogPostLayoutState();
}

class _BlogPostLayoutState extends State<BlogPostLayout> {
  @override
  Widget build(BuildContext context) {
    print(widget.index);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Category(widget.category),
        Titlee(widget.text[0].substring(0, 60)),
        SubTitle(widget.text[0].substring(0, 40)),
        CircleAvatarAndText(widget.index),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0, right: 20),
          child: Text(
            widget.text[0],
            style: avatarByWho,
          ),
        ),
        RoundedCornerImage(widget.index + 2),
        Padding(
          padding: const EdgeInsets.only(bottom: 45.0, right: 20),
          child: Text(
            widget.text[1],
            style: avatarByWho,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0, right: 20),
          child: Text(
            widget.text[2],
            style: avatarByWho,
          ),
        ),
        RoundedCornerImage(widget.index),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0, right: 20),
          child: Text(
            widget.text[3],
            style: avatarByWho,
          ),
        ),
        SocialIcons(),
        RelatedPosts(),
      ],
    );
  }
}
