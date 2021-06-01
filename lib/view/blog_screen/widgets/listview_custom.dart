import 'package:blog/utils/dummy_data/dummy_data.dart';
import 'package:blog/view/blog_screen/widgets/skeleton_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class ListViewCustom extends StatefulWidget {
  var cardsList, category, imagee;
  ListViewCustom(this.cardsList, this.imagee, [this.category]);
  @override
  _ListViewCustomState createState() => _ListViewCustomState();
}

class _ListViewCustomState extends State<ListViewCustom> {
  var _isLoading = true, _isInit = false;

  @override
  void initState() {
    super.initState();
    if (!_isInit) {
      _simulateLoad();
    }
    _isInit = true;
  }

  Future _simulateLoad() async {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var pom = 0;
    if (!_isLoading) {
      return NotificationListener<OverscrollIndicatorNotification>(
        // ignore: missing_return
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: ListView(
          children: List<Widget>.generate(
            widget.cardsList.length,
            (counter) {
              if (widget.cardsList[counter].category == widget.category ||
                  widget.category == null) {
                if (pom == 0) {
                  pom = 1;
                  return Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: widget.cardsList[counter],
                  );
                } else {
                  return cardsList[counter];
                }
              } else {
                return Container();
              }
            },
          ),
        ),
      );
    } else {
      return SkeletonCustom();
    }
  }
}
