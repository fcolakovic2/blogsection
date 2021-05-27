import 'package:flutter/material.dart';

NotificationListener<OverscrollIndicatorNotification> listViewCustom(cardsList,
    [category]) {
  var cat = 0;
  return NotificationListener<OverscrollIndicatorNotification>(
    // ignore: missing_return
    onNotification: (overscroll) {
      overscroll.disallowGlow();
    },
    child: ListView(
      children: List<Widget>.generate(cardsList.length, (counter) {
        if (cardsList[counter].category == category || category == null)
          cat = 1;
        return cardsList[counter].category == category || category == null
            ? cat == 1
                ? Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: cardsList[counter],
                  )
                : cardsList[counter]
            : Container();
      }),
    ),
  );
}
