import 'package:flutter/material.dart';
import 'productdetails.dart';


class ProductPage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'name': 'Product 1', 'description': 'Description of Product 1', 'price': '\$10'},
    {'name': 'Product 2', 'description': 'Description of Product 2', 'price': '\$20'},
    {'name': 'Product 3', 'description': 'Description of Product 3', 'price': '\$30'},
    {'name': 'Product 4', 'description': 'Description of Product 4', 'price': '\$40'},
    {'name': 'Product 5', 'description': 'Description of Product 5', 'price': '\$50'},
    {'name': 'Product 6', 'description': 'Description of Product 6', 'price': '\$60'},
    {'name': 'Product 7', 'description': 'Description of Product 7', 'price': '\$70'},
    {'name': 'Product 8', 'description': 'Description of Product 8', 'price': '\$80'},
    {'name': 'Product 9', 'description': 'Description of Product 9', 'price': '\$90'},
    {'name': 'Product 10', 'description': 'Description of Product 10', 'price': '\$100'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart action
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text(products[index]['name']!),
              subtitle: Text(products[index]['price']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(product: products[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Launch WhatsApp
        },
        child: Icon(Icons.abc),
        backgroundColor: Colors.green,
      ),
    );
  }
}
