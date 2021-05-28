import 'package:blog/view/blog_post/widgets/appbar.dart';
import 'package:flutter/material.dart';

class BlogPost extends StatefulWidget {
  @override
  _BlogPostState createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom2(context),
    );
  }
}
