import 'package:flutter/material.dart';
import '../screens/orders_screen.dart';
import '../screens/products_overview_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).primaryColorDark,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            color: Colors.white,
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Text(
              'Let\'s Go Shopping!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).primaryColor,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_bag,
              color: Colors.white,
              size: 25,
            ),
            title: Text(
              'MyShop',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ProductsOverViewScreen.routeName);
            },
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart_checkout,
              color: Colors.white,
              size: 25,
            ),
            title: Text(
              'Your Orders',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(OrderScreen.routeName);
            },
          ),
          Divider(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
