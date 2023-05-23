import 'package:appfuture/components/shopsPageWidget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class shopsPage extends StatelessWidget {
  shopsPage({Key? key}) : super(key: key);
  List<String> titles = <String>[
    'Cloud',
    'Beach',
    'Sunny',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Online Shops'),
          actions: [
            Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.search,
              ),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Color.fromARGB(255, 0, 29, 250),
        ),
        body: ListView(
          children: <Widget>[
            shopsPageWidget(),
            shopsPageWidget(),
            shopsPageWidget(),
            shopsPageWidget(),
            shopsPageWidget(),
            shopsPageWidget(),
            shopsPageWidget(),
            shopsPageWidget(),
            shopsPageWidget(),
            shopsPageWidget(),
          ],
        ),
      ),
    );
  }
}
