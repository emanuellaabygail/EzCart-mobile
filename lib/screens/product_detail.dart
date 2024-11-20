import 'package:ezcart/models/product_entry.dart';
import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  final ProductEntry item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Item Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${item.fields.name}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Description: ${item.fields.description}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Price: \$${item.fields.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to List'),
            ),
          ],
        ),
      ),
    );
  }
}