import 'package:blog/view/blog_screen/widgets/card.dart';
import 'package:blog/view/blog_screen/widgets/listview_custom.dart';
import 'package:flutter/material.dart';

var pom = 0;

var isLoading = true, isInit = false;

List<String> lista = [];
List<dynamic> listaText = [];
List<String> listaTitle = [];
List<String> listaSubtitle = [];
String date = "";

List<String> tabList = ["ALL POSTS", "EXPERIENCES", "RECIPES", "NEWS"];
List<CardWidget> cardsList = [
  CardWidget("EXPERIENCES", 0),
  CardWidget("RECIPES", 1),
  CardWidget("NEWS", 2),
  CardWidget("EXPERIENCES", 3),
  CardWidget("NEWS", 4),
];

List<CardWidget> cardsListToShuffle = cardsList;

List<Widget> widgetsList() {
  return [
    ListViewCustom(cardsList),
    ListViewCustom(cardsList, "EXPERIENCES"),
    ListViewCustom(cardsList, "RECIPES"),
    ListViewCustom(cardsList, "NEWS"),
  ];
}
