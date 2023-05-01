import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/products_grid.dart';

class ProductsOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context);
    final loadedProducts = products.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: ProductsGrid(),
    );
  }
}
