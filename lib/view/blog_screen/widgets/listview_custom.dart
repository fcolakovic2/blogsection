import 'package:blog/viewModel/listview_custom_viewmodel.dart';
import 'package:flutter/material.dart';

NotificationListener<OverscrollIndicatorNotification> listViewCustom(cardsList,
    [category]) {
  var pom = 0;
  return NotificationListener<OverscrollIndicatorNotification>(
    // ignore: missing_return
    onNotification: (overscroll) {
      overscroll.disallowGlow();
    },
    child: ListView(
      children: List<Widget>.generate(
        cardsList.length,
        (counter) => ListViewCustomViewModel()
            .topOffsetViewModel(counter, category, pom),
      ),
    ),
  );
}
