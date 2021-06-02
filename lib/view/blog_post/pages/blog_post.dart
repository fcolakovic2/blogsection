import 'package:blog/view/blog_post/widgets/sliver_section.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlogPost extends StatefulWidget {
  var text, index, category;
  BlogPost(this.text, this.index, this.category);
  @override
  _BlogPostState createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SliverSection(widget.text, widget.index, widget.category),
    );
  }
}
