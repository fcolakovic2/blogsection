import 'package:blog/services/get_requests.dart';
import 'package:blog/view/blog_screen/widgets/card.dart';
import 'package:blog/view/blog_screen/widgets/listview_custom.dart';
import 'package:flutter/material.dart';

var pom = 0;

List<String> tabList = ["ALL POSTS", "EXPERIENCES", "RECIPES", "NEWS"];
List<CardWidget> cardsList = [
  CardWidget(
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum na adadasdasdada",
      "Experiences",
      1),
  CardWidget(
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum na adadasdasdada",
      "Recipes",
      2),
  CardWidget(
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum na adadasdasdada",
      "News",
      3),
  CardWidget(
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum na adadasdasdada",
      "Experiences",
      4),
  CardWidget(
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum naaaa adadasdasdada",
      "News",
      5),
];

List<Widget> widgetsList = [
  listViewCustom(cardsList),
  listViewCustom(cardsList, "Experiences"),
  listViewCustom(cardsList, "Recipes"),
  listViewCustom(cardsList, "News"),
];
