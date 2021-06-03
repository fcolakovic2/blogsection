import 'package:blog/providers/page_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class IconBack extends StatefulWidget {
  @override
  _IconBackState createState() => _IconBackState();
}

class _IconBackState extends State<IconBack> {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<PageIndexProvider>();

    return Container(
      width: 39.sp,
      height: 39.sp,
      child: RawMaterialButton(
        elevation: 0,
        fillColor: Color(0xffF9F9F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: Color(0xff373737),
          size: 18.sp,
        ),
        onPressed: () {
          controllers.changeUpdateStatus(false);
          Navigator.pop(context);
        },
      ),
    );
  }
}
