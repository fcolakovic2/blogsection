import 'package:blog/view/favourites/widgets/appbar_custom3.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCustom3("Blog"),
      body: Padding(
        padding: const EdgeInsets.only(top: 160),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset('assets/images/nothing_here.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
