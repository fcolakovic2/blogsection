import 'package:blog/services/get_requests.dart';
import 'package:blog/view/blog_screen/widgets/card.dart';
import 'package:blog/view/blog_screen/widgets/listview_custom.dart';
import 'package:flutter/material.dart';

var pom = 0;

List<String> tabList = ["ALL POSTS", "EXPERIENCES", "RECIPES", "NEWS"];
List<CardWidget> cardsList = [
  CardWidget("Experiences", 1),
  CardWidget("Recipes", 2),
  CardWidget("News", 3),
  CardWidget("Experiences", 4),
  CardWidget("News", 5),
];

List<Widget> widgetsList = [
  listViewCustom(cardsList),
  listViewCustom(cardsList, "Experiences"),
  listViewCustom(cardsList, "Recipes"),
  listViewCustom(cardsList, "News"),
];
