import 'package:appfuture/components/shopsPageWidget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class shopsPage extends StatelessWidget {
  shopsPage({Key? key}) : super(key: key);
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: shopsPageWidget(),
      ),
    );
  }
}
