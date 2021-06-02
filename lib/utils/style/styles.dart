import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

TextStyle relatedposts = TextStyle(
  fontFamily: "Averta",
  fontWeight: FontWeight.w700,
  color: Color(0xff373737),
  fontSize: 26,
  letterSpacing: -0.5,
  fontStyle: FontStyle.normal,
);

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
      statusBarColor: Color.fromRGBO(0, 0, 0, 0.1),
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
    primarySwatch: white,
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

TextStyle blogPostCategory = TextStyle(
  fontWeight: FontWeight.w400,
  fontFamily: "Averta",
  fontSize: 11.sp,
  color: Color(0xFF373737),
);

TextStyle blogPostSub = TextStyle(
  fontWeight: FontWeight.w400,
  fontFamily: "Averta",
  fontStyle: FontStyle.normal,
  fontSize: 22.sp,
  color: Color(0xFF373737),
);

TextStyle avatarByWho = TextStyle(
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  fontFamily: "Averta",
  fontSize: 16.sp,
  color: Color(0xFF373737),
);

TextStyle avatarSecondLine = TextStyle(
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  fontFamily: "Averta",
  fontSize: 14.sp,
  color: Color(0xFF373737).withOpacity(0.7),
);
