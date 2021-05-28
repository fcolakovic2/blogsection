import 'package:blog/view/blog_post/widgets/appbar.dart';
import 'package:blog/view/blog_post/widgets/sliver_section.dart';
import 'package:flutter/material.dart';

class BlogPost extends StatefulWidget {
  @override
  _BlogPostState createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      // appBar: appBarCustom2(context),
      body: SliverSection(),
    );
  }
}
