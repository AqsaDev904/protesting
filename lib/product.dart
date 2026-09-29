import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}


// Main App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Shop"),
        ),

        body: Column(
          children: [

            // Constructor ke through data bhej rahe hain
            ProductCard("Shoes", 2500),
            ProductCard("Shirt", 1800),
            ProductCard("Bag", 3000),

          ],
        ),
      ),
    );
  }
}


// Custom Widget
class ProductCard extends StatelessWidget {

  String name;
  double price;

  // Constructor
  ProductCard(this.name, this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),

      child: ListTile(
        title: Text(name),
        subtitle: Text("Price: Rs. $price"),
        trailing: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
