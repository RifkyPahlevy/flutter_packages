import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package/pages/avatar_glow.dart';
import 'package:flutter_package/pages/intl_package.dart';
import 'package:flutter_package/pages/latihan.dart';
import 'package:flutter_package/pages/package_faker.dart';
import 'package:flutter_package/pages/shop_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgets = [
    IntlPackage(),
    PackageFaker(),
    AvatarGlowing(),
    ShopItem(),
    LatihanPackage(),
  ];

  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AplikasiQ Nieech'),
        centerTitle: true,
      ),
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: 2,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.shopping_cart_rounded, title: 'Shop'),
          TabItem(icon: Icons.search, title: 'Search'),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
