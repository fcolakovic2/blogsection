import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class SkeletonCustom extends StatelessWidget {
  const SkeletonCustom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonLoader(
      builder: Container(
        height: MediaQuery.of(context).size.height -
            AppBar().preferredSize.height -
            MediaQuery.of(context).padding.top -
            104.sp,
        child: ListView(
          children: List<Widget>.generate(
            3,
            (counter) {
              return Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      height: ScreenUtil().setHeight(158),
                      width: double.infinity,
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        width: ScreenUtil().screenWidth / 2,
                        height: 12,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        width: double.infinity,
                        height: 10,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        width: double.infinity,
                        height: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      period: Duration(seconds: 2),
      highlightColor: Colors.white,
      direction: SkeletonDirection.ltr,
    );
  }
}
