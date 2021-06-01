import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

FutureBuilder buildFutureImage(img) {
  return FutureBuilder<dynamic>(
    future: img,
    builder: (BuildContext context, var snapshot) {
      if (snapshot.hasData) {
        return Container(
          width: ScreenUtil().screenWidth,
          height: ScreenUtil().setHeight(158),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(snapshot.data["download_url"]),
            ),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
        );
      }
      return Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().setHeight(158),
        color: Colors.grey[300],
      );
      return Center(child: CircularProgressIndicator());
    },
  );
}
