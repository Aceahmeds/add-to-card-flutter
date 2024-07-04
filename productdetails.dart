import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Map<String, String> product;

  ProductDetails({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']!),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product['name']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              product['price']!,
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(height: 10),
            Text(product['description']!),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Add to Cart
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
