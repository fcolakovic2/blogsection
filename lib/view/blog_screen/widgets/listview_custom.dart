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
        (counter) {
          if (cardsList[counter].category == category || category == null) {
            if (pom == 0) {
              pom = 1;
              return Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: cardsList[counter],
              );
            } else {
              return cardsList[counter];
            }
          } else {
            return Container();
          }
          // cardsList[counter].category == category || category == null
          //     ? counter == 0
          //         ? Padding(
          //             padding: const EdgeInsets.only(top: 40.0),
          //             child: cardsList[counter],
          //           )
          //         : cardsList[counter]
          //     : Container();
        },
      ),
    ),
  );
}
