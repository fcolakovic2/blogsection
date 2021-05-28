import 'package:blog/scrollable.dart';
import 'package:blog/view/blog_post/widgets/appbar.dart';
import 'package:blog/view/blog_screen/widgets/appbar.dart';
import 'package:blog/view/blog_screen/widgets/appbarwithback.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  @override
  _ErrorScreen createState() => _ErrorScreen();
}

class _ErrorScreen extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCustom3("Blog"),
      body: Container(child: Text("test")),
    );
  }
}
