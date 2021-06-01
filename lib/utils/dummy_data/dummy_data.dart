import 'package:blog/view/blog_screen/widgets/card.dart';
import 'package:blog/view/blog_screen/widgets/listview_custom.dart';
import 'package:flutter/material.dart';

var pom = 0;

var isLoading = true, isInit = false;

List<String> lista = [];
List<String> listaText = [];
List<String> listaTitle = [];
List<String> listaSubtitle = [];

List<String> tabList = ["ALL POSTS", "EXPERIENCES", "RECIPES", "NEWS"];
List<CardWidget> cardsList = [
  CardWidget("EXPERIENCES", 0),
  CardWidget("RECIPES", 1),
  CardWidget("NEWS", 2),
  CardWidget("EXPERIENCES", 3),
  CardWidget("NEWS", 4),
];

List<Widget> widgetsList([images]) {
  return [
    ListViewCustom(cardsList, images),
    ListViewCustom(cardsList, images, "EXPERIENCES"),
    ListViewCustom(cardsList, images, "RECIPES"),
    ListViewCustom(cardsList, images, "NEWS"),
  ];
}
