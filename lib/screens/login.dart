import 'package:appfuture/components/loginwidget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class login_Screen extends StatelessWidget {
  login_Screen({Key? key}) : super(key: key);
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
        body: loginWidget(),
      ),
    );
  }
}
