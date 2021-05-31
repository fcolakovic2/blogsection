import 'package:blog/services/get_requests.dart';
import 'package:blog/view/blog_screen/widgets/card.dart';
import 'package:blog/view/blog_screen/widgets/listview_custom.dart';
import 'package:flutter/material.dart';

var pom = 0;

List<String> tabList = ["ALL POSTS", "EXPERIENCES", "RECIPES", "NEWS"];
List<CardWidget> cardsList = [
  CardWidget("EXPERIENCES", 1),
  CardWidget("RECIPES", 2),
  CardWidget("NEWS", 3),
  CardWidget("EXPERIENCES", 4),
  CardWidget("NEWS", 5),
];

List<Widget> widgetsList = [
  listViewCustom(cardsList),
  listViewCustom(cardsList, "EXPERIENCES"),
  listViewCustom(cardsList, "RECIPES"),
  listViewCustom(cardsList, "NEWS"),
];
