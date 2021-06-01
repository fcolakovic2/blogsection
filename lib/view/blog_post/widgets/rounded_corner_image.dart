import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class RoundedCornerImage extends StatelessWidget {
  var index;
  RoundedCornerImage(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, right: 20),
      child: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().setHeight(211),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(lista[index]),
          ),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );
  }
}
