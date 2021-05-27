import 'package:blog/providers/page_index.dart';
import 'package:blog/view/blog_screen/widgets/tabbar_reusable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

DefaultTabController defaultTabBarCustom(tabList, widgetsList, appBar,
    [widgetsBefore]) {
  return DefaultTabController(
    length: tabList.length,
    child: Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: TabBarSlider(tabList, widgetsList, widgetsBefore),
      ),
    ),
  );
}

// ignore: must_be_immutable
class TabBarSlider extends StatefulWidget {
  var list, widgetsList, widgetsBefore;
  TabBarSlider(this.list, this.widgetsList, [this.widgetsBefore]);
  @override
  _TabBarSliderState createState() => _TabBarSliderState();
}

class _TabBarSliderState extends State<TabBarSlider> {
  var _scrollController = ScrollController();
  // int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NotificationListener<OverscrollIndicatorNotification>(
        // ignore: missing_return
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: ListView(
          physics: widget.widgetsBefore == null
              ? NeverScrollableScrollPhysics()
              : AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          controller: _scrollController,
          children: [
            Container(
              child: widget.widgetsBefore,
            ),
            tabBarReusable(widget.list),
            Container(
              height: MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height -
                  MediaQuery.of(context).padding.top -
                  120.sp,
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: List<Widget>.generate(
                  4,
                  (counter) => Text("s"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
