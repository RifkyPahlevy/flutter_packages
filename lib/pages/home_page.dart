import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package/pages/avatar_glow.dart';
import 'package:flutter_package/pages/intl_package.dart';
import 'package:flutter_package/pages/package_faker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgets = [
    IntlPackage(),
    PackageFaker(),
    AvatarGlowing(),
    Text('Belum DIBUAT'),
    Text('Belum DIBUAT'),
  ];

  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AplikasiQ'),
        centerTitle: true,
      ),
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: 2,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
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
