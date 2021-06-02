import 'package:blog/providers/page_index.dart';
import 'package:blog/utils/style/styles.dart';
import 'package:blog/view/blog_screen/pages/blog_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PageIndexProvider()),
      ],
      child: MyApp(),
    ),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  setSystemUIOverlayStyle();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Blog',
        theme: themeDataStyle(),
        builder: (context, widget) {
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget,
          );
        },
        home: BlogScreen(),
      ),
    );
  }
}
