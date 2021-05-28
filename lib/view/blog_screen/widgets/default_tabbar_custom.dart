import 'package:blog/utils/dummy_data/dummy_data.dart';
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

class _TabBarSliderState extends State<TabBarSlider>
    with TickerProviderStateMixin {
  var _scrollController = ScrollController();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: widget.list.length);
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
            tabBarReusable(widget.list, _tabController),
            Container(
              height: MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height -
                  MediaQuery.of(context).padding.top -
                  104.sp,
              child: TabBarView(
                controller: _tabController,
                physics: BouncingScrollPhysics(),
                children: List<Widget>.generate(
                  widgetsList.length,
                  (counter) => Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: widgetsList[counter],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
