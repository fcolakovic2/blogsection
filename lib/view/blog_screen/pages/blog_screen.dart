import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:blog/view/blog_screen/widgets/appbar.dart';
import 'package:blog/view/blog_screen/widgets/default_tabbar_custom.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatefulWidget {
  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return defaultTabBarCustom(tabList, widgetsList, appBarCustom("Blog"));
  }
}
