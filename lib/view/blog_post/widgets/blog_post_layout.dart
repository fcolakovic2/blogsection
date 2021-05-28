import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            "EXPERIENCES",
            style: blogPostCategory,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            "Three Healthy and Easy Japanese Dishes You Can Make at Home",
            style: appBarText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Text(
            "How to make a full ichiju-sansai meal in less than 30 minutes",
            style: blogPostSub,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: ScreenUtil().setWidth(50),
                    height: ScreenUtil().setHeight(50),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy2Vzf90CMXNaJzJ6kKGm-nGNhmYIhkDGEFV6SzvfcuEY5MlvGLFfPHFlOwxVTWuqFZm0&usqp=CAU'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "By John Doe",
                      style: avatarByWho,
                    ),
                    Row(
                      children: [
                        Text(
                          "Apr 29 ",
                          style: avatarSecondLine,
                        ),
                        Text(
                          ". ",
                          style: avatarSecondLine,
                        ),
                        Text(
                          "3 min read",
                          style: avatarSecondLine,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Text(
            "Ichiju-sansai is a term used to describe the way traditional Japanese meals are constructed. It translates to “one soup, three sides” and is one of the main principles guiding Japanese healthy eating and nutrition.",
            style: avatarByWho,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().setHeight(211),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1556911220-e15b29be8c8f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29va3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 45.0),
          child: Text(
            "This style of eating allows for us to eat healthily without compromising our favorite foods — unlike elimination diets or strict dogmatic eating rules, it serves more as a philosophy on how we can enjoy food and eat more of the vegetables, meats, and seasonings we love to heal and nourish our bodies. To read more about ichiju-sansai and the Japanese art of eating healthily, you can check out my previous writing here.",
            style: avatarByWho,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Text(
            "Ichiju-sansai meals can look intimidating, but with the right knowledge, ingredients, and a bit of foresight and preparation, you can definitely make a full traditional Japanese meal in less than 30 minutes. Here’s how:",
            style: avatarByWho,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().setHeight(211),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    NetworkImage("https://wallpapercave.com/wp/wp3495545.jpg"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Text(
            "In fact, almost every Japanese household will have a rice cooker — some spending up to 200 and up — because if you’re going to eat rice often, it’s worth investing in the quality. The one I use at home is Zojirushi’s Induction Heating Pressure Rice Cooker & Warmer NP-NVC10/18.",
            style: avatarByWho,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 80.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: ScreenUtil().setWidth(22),
                  height: ScreenUtil().setHeight(22),
                  child: SvgPicture.asset(
                    "assets/images/facebook.svg",
                    color: Color(0xff373737),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: ScreenUtil().setWidth(22),
                  height: ScreenUtil().setHeight(22),
                  child: SvgPicture.asset(
                    "assets/images/google.svg",
                    color: Color(0xff373737),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: ScreenUtil().setWidth(22),
                  height: ScreenUtil().setHeight(22),
                  child: SvgPicture.asset(
                    "assets/images/twitter.svg",
                    color: Color(0xff373737),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: ScreenUtil().setWidth(22),
                  height: ScreenUtil().setHeight(22),
                  child: SvgPicture.asset(
                    "assets/images/linkedin.svg",
                    color: Color(0xff373737),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: ScreenUtil().setWidth(22),
                  height: ScreenUtil().setHeight(22),
                  child: SvgPicture.asset(
                    "assets/images/whatsapp.svg",
                    color: Color(0xff373737),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: ScreenUtil().setWidth(22),
                  height: ScreenUtil().setHeight(22),
                  child: SvgPicture.asset(
                    "assets/images/Ellipse 188.svg",
                    color: Color(0xff373737),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
