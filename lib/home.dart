import 'package:appfuture/components/homeWidget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class home_screen extends StatelessWidget {
  home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: homeWidget(),
      ),
    );
  }
}
