import 'package:flutter/material.dart';

class shopsPageWidget extends StatefulWidget {
  shopsPageWidget({Key? key}) : super(key: key);

  @override
  State<shopsPageWidget> createState() => _shopsPageWidgetState();
}

class _shopsPageWidgetState extends State<shopsPageWidget> {
  String textName = "Zara shop";
  String networkImage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ24yhMfr14IJ2PmZ9dFI2_f8ywVEYBrFulA&usqp=CAU';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Image.network(networkImage, width: 110, height: 100),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 2.0, 2.0, 2.0),
                  child: Text(
                    textName,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 6.0, 2.0, 2.0),
                  child: Text(
                    "Info",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
