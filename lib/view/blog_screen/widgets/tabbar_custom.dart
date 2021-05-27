import 'package:blog/providers/page_index.dart';
import 'package:blog/utils/style/m2dindicator.dart';
import 'package:blog/utils/style/styles.dart';
import 'package:blog/view/blog_screen/widgets/tabelement.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class TabBarCustom extends StatefulWidget {
  var lista, _tabController;
  TabBarCustom(this.lista, this._tabController);
  @override
  _TabBarCustomState createState() => _TabBarCustomState();
}

class _TabBarCustomState extends State<TabBarCustom>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<PageIndexProvider>();

    widget._tabController.addListener(() {
      controllers.changeIndex(widget._tabController.index);
    });

    return Container(
      decoration: appBarBorder(),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.only(left: 20.0, right: .0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: TabBar(
              controller: widget._tabController,
              labelColor: const Color(0xFF373737),
              unselectedLabelColor: const Color(0xFF373737).withOpacity(0.7),
              isScrollable: true,
              onTap: (value) {
                controllers.changeIndex(value);
              },
              indicator: MD2Indicator(
                indicatorSize: MD2IndicatorSize.tiny,
                indicatorHeight: 3.0,
                indicatorColor: Color(0xFFFFDF36),
              ),
              labelPadding: EdgeInsets.symmetric(vertical: 0),
              tabs: List<Widget>.generate(
                widget.lista.length,
                (counter) => tabElement(
                    widget._tabController.index, widget.lista[counter]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
