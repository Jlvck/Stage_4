// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './screens/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (ctx) => Products(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => Cart(),
          )
        ],
        child: MaterialApp(
          title: 'My Shop',
          theme: ThemeData(
              primarySwatch: Colors.purple,
              colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                  .copyWith(secondary: Colors.deepOrange),
              fontFamily: 'Lato'),
          home: ProductsOverViewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
          },
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: Center(
        child: Text('Let\'s build a shop'),
      ),
    );
  }
}
