import 'package:flutter/material.dart';
import 'package:appfuture/screens/account.dart';
import 'package:appfuture/screens/favorite.dart';
import 'package:appfuture/shopScreens/shopsPage.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class prodectPage extends StatefulWidget {
  prodectPage({Key? key}) : super(key: key);

  @override
  State<prodectPage> createState() => _prodectPageState();
}

class _prodectPageState extends State<prodectPage> {
  final List<Product> products = [
    Product('Product 1', 'Description for Product 1', 20),
    Product('Product 2', 'Description for Product 2', 30),
    Product('Product 3', 'Description for Product 3', 25),
    // Add more products as needed
  ];

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
                  // showSearch(
                  //   context: context,
                  //   delegate: DataSearch(),
                  // );
                },
                icon: Icon(Icons.search),
              ),
            ],
            backgroundColor: Color.fromARGB(255, 0, 29, 250),
          ),
          body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(products[index]);
            },
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

class Product {
  final String name;
  final String description;
  final double price;

  Product(this.name, this.description, this.price);
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              product.description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
