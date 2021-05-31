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
  @override
  _BlogPostLayoutState createState() => _BlogPostLayoutState();
}

class _BlogPostLayoutState extends State<BlogPostLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Category(),
        Titlee(),
        SubTitle(),
        CircleAvatarAndText(),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0, right: 20),
          child: Text(
            "Ichiju-sansai is a term used to describe the way traditional Japanese meals are constructed. It translates to “one soup, three sides” and is one of the main principles guiding Japanese healthy eating and nutrition.",
            style: avatarByWho,
          ),
        ),
        RoundedCornerImage(
            "https://images.unsplash.com/photo-1556911220-e15b29be8c8f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29va3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
        Padding(
          padding: const EdgeInsets.only(bottom: 45.0, right: 20),
          child: Text(
            "This style of eating allows for us to eat healthily without compromising our favorite foods — unlike elimination diets or strict dogmatic eating rules, it serves more as a philosophy on how we can enjoy food and eat more of the vegetables, meats, and seasonings we love to heal and nourish our bodies. To read more about ichiju-sansai and the Japanese art of eating healthily, you can check out my previous writing here.",
            style: avatarByWho,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0, right: 20),
          child: Text(
            "Ichiju-sansai meals can look intimidating, but with the right knowledge, ingredients, and a bit of foresight and preparation, you can definitely make a full traditional Japanese meal in less than 30 minutes. Here’s how:",
            style: avatarByWho,
          ),
        ),
        RoundedCornerImage("https://wallpapercave.com/wp/wp3495545.jpg"),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0, right: 20),
          child: Text(
            "In fact, almost every Japanese household will have a rice cooker — some spending up to 200 and up — because if you’re going to eat rice often, it’s worth investing in the quality. The one I use at home is Zojirushi’s Induction Heating Pressure Rice Cooker & Warmer NP-NVC10/18.",
            style: avatarByWho,
          ),
        ),
        SocialIcons(),
        RelatedPosts(),
      ],
    );
  }
}
