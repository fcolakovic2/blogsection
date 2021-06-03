import 'package:blog/view/blog_screen/widgets/card.dart';
import 'package:blog/view/blog_screen/widgets/listview_custom.dart';
import 'package:flutter/material.dart';

var pom = 0;

var isLoading = true, isInit = false;

List<String> listNew = [
  "https://loremflickr.com/320/240",
  "https://i.picsum.photos/id/528/4000/700.jpg?hmac=s3gqxmiukN_zznHLyoDMLOXd1rTWquKZYYE0JMOr4DQ",
  "https://i.picsum.photos/id/309/700/700.jpg?hmac=Xp__Xz3iqK1d2vYIxHVRrO0cylu_cl0RTwV-dRjUpZw",
  "https://i.picsum.photos/id/528/4000/700.jpg?hmac=s3gqxmiukN_zznHLyoDMLOXd1rTWquKZYYE0JMOr4DQ",
  "https:\/\/loremflickr.com\/cache\/resized\/65535_49259743621_1191c01a64_n_320_240_g.jpg"
];
List<String> lista = [];
List<String> listaAuth = [];
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

List<CardWidget> cardsListToShuffle = cardsList.map((v) => v).toList();

List<Widget> widgetsList() {
  return [
    ListViewCustom(cardsList),
    ListViewCustom(cardsList, "EXPERIENCES"),
    ListViewCustom(cardsList, "RECIPES"),
    ListViewCustom(cardsList, "NEWS"),
  ];
}
