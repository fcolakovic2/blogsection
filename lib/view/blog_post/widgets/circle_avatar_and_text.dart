import 'package:blog/utils/style/styles.dart';
import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CircleAvatarAndText extends StatelessWidget {
  var index;
  CircleAvatarAndText(this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, right: 20),
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
                  "By ${listaAuth[index]}",
                  style: avatarByWho,
                ),
                Row(
                  children: [
                    Text(
                      "$date ",
                      style: avatarSecondLine,
                    ),
                    SvgPicture.asset(
                      "assets/images/dot.svg",
                      color: Color(0xff373737),
                    ),
                    Text(
                      " 3 min read",
                      style: avatarSecondLine,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
