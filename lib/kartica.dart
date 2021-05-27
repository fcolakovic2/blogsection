import 'package:flutter/material.dart';

class KarticaWidget extends StatefulWidget {
  String image, naslov, podnaslov;
  KarticaWidget(this.image, this.naslov, this.podnaslov);
  @override
  _KarticaWidgetState createState() => _KarticaWidgetState();
}

class _KarticaWidgetState extends State<KarticaWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.asset(widget.image),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, top: 15.0, bottom: 8.0),
              child: Text(
                widget.naslov,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                widget.podnaslov,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
