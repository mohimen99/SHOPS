import 'package:appfuture/screens/favorite.dart';
import 'package:appfuture/screens/search.dart';
import 'package:appfuture/screens/shopsPage.dart';
import 'package:appfuture/screens/zaraShop/zaraWidget.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

class zara_screen extends StatefulWidget {
  zara_screen({Key? key}) : super(key: key);

  @override
  State<zara_screen> createState() => _zara_screenState();
}

class _zara_screenState extends State<zara_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: DataSearch(),
                  );
                },
                icon: Icon(Icons.search),
              ),
            ],
            backgroundColor: Color.fromARGB(255, 0, 29, 250),
          ),
          body: ListView(
            children: [
              Wrap(children: [
                zara_widget(),
                zara_widget(),
                zara_widget(),
                zara_widget(),
                zara_widget(),
              ]),
            ],
          ),
          floatingActionButton: FabCircularMenu(children: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => shopsPage(),
                    ),
                  );
                }),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => favorite(),
                  ),
                );
              },
            ),
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
