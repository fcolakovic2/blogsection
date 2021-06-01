import 'package:blog/view_model/get_requests_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

FutureBuilder buildFutureImage(index) {
  return FutureBuilder<dynamic>(
    future: GetRequestsViewModel().getDataImagesViewModel(index),
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
      return Container();
      return Center(child: CircularProgressIndicator());
    },
  );
}
