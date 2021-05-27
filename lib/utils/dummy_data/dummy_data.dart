import 'package:blog/view/blog_screen/widgets/card.dart';
import 'package:blog/view/blog_screen/widgets/listview_custom.dart';
import 'package:flutter/material.dart';

List<String> tabList = ["ALL POSTS", "EXPERIENCES", "RECIPES", "NEWS"];

List<CardWidget> cardsList = [
  CardWidget(
      "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg?quality=90&resize=700%2C636",
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum na adadasdasdada",
      "Experiences"),
  CardWidget(
      "https://assets.bonappetit.com/photos/597f6564e85ce178131a6475/master/w_1200,c_limit/0817-murray-mancini-dried-tomato-pie.jpg",
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum na adadasdasdada",
      "Recipes"),
  CardWidget(
      "https://images2.minutemediacdn.com/image/upload/c_crop,h_1126,w_2000,x_0,y_181/f_auto,q_auto,w_1100/v1554932288/shape/mentalfloss/12531-istock-637790866.jpg",
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum na adadasdasdada",
      "News"),
  CardWidget(
      "https://i1.wp.com/www.eatthis.com/wp-content/uploads/2019/09/spaghetti-meatballs.jpg?fit=1200%2C879&ssl=1",
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum na adadasdasdada",
      "Experiences"),
  CardWidget(
      "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/12/Food_craving_GettyImages958841812_Feature.jpg",
      "Mozzarela",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra at turpis fusce a laoreet elementum naaaa adadasdasdada",
      "News"),
];

List<Widget> widgetsList = [
  listViewCustom(cardsList),
  listViewCustom(cardsList, "Experiences"),
  listViewCustom(cardsList, "Recipes"),
  listViewCustom(cardsList, "News"),
];
