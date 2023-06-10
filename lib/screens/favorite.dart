import 'package:appfuture/components/favoriteWidget.dart';
import 'package:flutter/material.dart';

class favorite extends StatefulWidget {
  favorite({Key? key}) : super(key: key);

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: favoriteWidget(),
      ),
    );
  }
}
