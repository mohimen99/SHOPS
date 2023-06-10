import 'package:flutter/material.dart';

class zara_widget extends StatefulWidget {
  zara_widget({Key? key}) : super(key: key);

  @override
  State<zara_widget> createState() => _zara_widgetState();
}

class _zara_widgetState extends State<zara_widget> {
  String networkImage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ24yhMfr14IJ2PmZ9dFI2_f8ywVEYBrFulA&usqp=CAU';
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 180,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(networkImage),
                ),
              ),
            ),
            Container(
              child: Card(
                child: Text(
                  'Card Title',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
