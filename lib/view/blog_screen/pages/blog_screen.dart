import 'dart:math';

import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:blog/view/blog_screen/widgets/appbar.dart';
import 'package:blog/view/blog_screen/widgets/default_tabbar_custom.dart';
import 'package:blog/view_model/get_requests_vm.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatefulWidget {
  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  dynamic imagee;
  dynamic titleSubtitle;
  @override
  void initState() {
    super.initState();

    Random random = new Random();

    imagee = GetRequestsViewModel().getDataImagesViewModel(random.nextInt(10));
    for (var i = 0; i < cardsList.length; i++)
      titleSubtitle =
          GetRequestsViewModel().getDataTitleSubtitleViewModel().then((result) {
        if (i == cardsList.length - 1) {
          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              isLoading = false;
            });
          });
        }
      });
  }

  // Future _simulateLoad() async {
  // Future.delayed(Duration(seconds: 2), () {
  //   setState(() {
  //     isLoading = false;
  //   });
  // });
  // }

  @override
  Widget build(BuildContext context) {
    return defaultTabBarCustom(
        tabList, widgetsList, appBarCustom("Blog"), imagee);
  }
}
