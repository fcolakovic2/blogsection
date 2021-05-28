import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle appBarText = TextStyle(
  fontFamily: "Averta",
  fontWeight: FontWeight.w700,
  color: Color(0xff373737),
  fontSize: 26.sp,
  letterSpacing: -0.5,
);

TextStyle itemSlider = TextStyle(
  fontWeight: FontWeight.w700,
  fontFamily: "Averta",
  fontSize: 14.sp,
  letterSpacing: 0.05,
);

TextStyle itemSlider2 = TextStyle(
  fontWeight: FontWeight.w400,
  fontFamily: "Averta",
  fontSize: 14.sp,
  letterSpacing: 0.05,
);

BoxDecoration appBarBorder() {
  return BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color(0xffEEEEEE),
        width: 1,
      ),
    ),
  );
}

void setSystemUIOverlayStyle() {
  return SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ), /* set Status bar icon color in iOS. */
  );
}

ThemeData themeDataStyle() {
  return ThemeData(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    fontFamily: 'Inter',
    primarySwatch: Colors.blue,
  );
}

TextStyle cardTitleStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontFamily: "Averta",
  fontSize: 16.sp,
  color: Color(0xFF373737),
);

TextStyle cardSubTitleStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontFamily: "Averta",
  fontSize: 13.sp,
  color: Color(0xFF373737).withOpacity(0.6),
);
