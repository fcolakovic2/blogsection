import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerForIcon extends StatelessWidget {
  var icon;
  ContainerForIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.sp,
      height: 30.sp,
      child: RawMaterialButton(
        elevation: 0,
        fillColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SvgPicture.asset(
          "assets/images/$icon",
          color: Color(0xff373737),
        ),
        onPressed: () {},
      ),
    );
  }
}
