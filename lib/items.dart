import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Items {
  const Items({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

List<Items> items = <Items>[
  const Items(title: 'Add Product', icon: Icons.home),
  const Items(title: 'Products', icon: Icons.home),
  const Items(title: 'Orders', icon: Icons.shopping_bag),
  const Items(title: 'Liquidation Offers', icon: Icons.monetization_on),
  const Items(title: 'Automate Pricing', icon: Icons.settings),
  const Items(title: 'Finance', icon: CupertinoIcons.money_dollar),
  const Items(title: 'SEO', icon: CupertinoIcons.graph_square),
  const Items(title: 'Warehouse Dropshipping', icon: Icons.warehouse),
  const Items(title: 'Promotions', icon: CupertinoIcons.gift_alt),
  const Items(title: 'Manage Reviews', icon: Icons.star)
];
