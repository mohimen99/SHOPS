import 'package:appfuture/shopScreens/prodectPage.dart';
import 'package:appfuture/screens/account.dart';
import 'package:appfuture/home.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class shopHome extends StatelessWidget {
  shopHome({Key? key}) : super(key: key);
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
            title: Text("Shops"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
                icon: Icon(Icons.search),
              ),
            ],
            backgroundColor: Color.fromARGB(255, 0, 29, 250),
          ),
          body: ListView(
            children: [
              Wrap(
                children: [
                  shopHomeWidget(),
                ],
              ),
            ],
          ),
          floatingActionButton: FabCircularMenu(children: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => home_screen(),
                    ),
                  );
                }),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => account_Screen(),
                  ),
                );
              },
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

class shopHomeWidget extends StatefulWidget {
  shopHomeWidget({Key? key}) : super(key: key);

  @override
  State<shopHomeWidget> createState() => _shopHomeWidgetState();
}

class _shopHomeWidgetState extends State<shopHomeWidget> {
  String textName = "Zara shop";
  List<String> textlist = ['Zara', 'H & M', 'Amircan Egale'];

  String networkImage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ24yhMfr14IJ2PmZ9dFI2_f8ywVEYBrFulA&usqp=CAU';
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
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
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => prodectPage(),
                ),
              );
            },
            child: Text(
              textName,
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // this will show clear query button
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // adding a back button to close the search
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(child: Text("محتوى البحث"));
  }
}
