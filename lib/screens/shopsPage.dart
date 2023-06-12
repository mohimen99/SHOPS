import 'package:appfuture/components/shopsPageWidget.dart';
import 'package:appfuture/screens/favorite.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
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
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: [],
            backgroundColor: Color.fromARGB(255, 0, 29, 250),
          ),
          body: ListView(
            children: [
              Wrap(
                children: [
                  shopsPageWidget(),
                  shopsPageWidget(),
                  shopsPageWidget(),
                  shopsPageWidget(),
                  shopsPageWidget(),
                ],
              ),
            ],
          ),
          floatingActionButton: FabCircularMenu(children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            )
          ])),
    );
  }
}
