import 'package:blog/utils/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        Row(
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
        )
      ],
    );
  }
}
