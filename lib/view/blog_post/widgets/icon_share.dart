import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconShare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39.sp,
      height: 39.sp,
      child: RawMaterialButton(
        elevation: 0,
        fillColor: Color(0xffF9F9F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SvgPicture.asset(
          "assets/images/iconshare.svg",
          color: Color(0xff373737),
        ),
        onPressed: () {
          // Navigator.pop(context);
        },
      ),
    );
  }
}
