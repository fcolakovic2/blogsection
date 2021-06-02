import 'package:blog/view/blog_post/widgets/container_social_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80.0, right: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: ContainerForIcon("facebook.svg"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              child: ContainerForIcon("google.svg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              child: ContainerForIcon("twitter.svg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              width: 20.sp,
              height: 20.sp,
              child: ContainerForIcon("linkedin.svg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              child: ContainerForIcon("whatsapp.svg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              child: ContainerForIcon("Ellipse 188.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
