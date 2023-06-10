import 'package:flutter/material.dart';

class favoriteWidget extends StatefulWidget {
  favoriteWidget({Key? key}) : super(key: key);

  @override
  State<favoriteWidget> createState() => _favoriteWidgetState();
}

class _favoriteWidgetState extends State<favoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("favorite page"),
    );
  }
}
