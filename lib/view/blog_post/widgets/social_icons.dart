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
    );
  }
}
