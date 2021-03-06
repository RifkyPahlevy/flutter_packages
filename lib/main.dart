import 'package:flutter/material.dart';
import 'package:flutter_package/pages/dropdown_package.dart';
import 'package:flutter_package/pages/latihan.dart';
import 'package:flutter_package/pages/login.dart';
import 'package:flutter_package/pages/home_page.dart';
import 'package:flutter_package/pages/intl_package.dart';
import 'package:flutter_package/pages/intro.dart';
import 'package:flutter_package/pages/package_faker.dart';
import 'package:flutter_package/pages/shop_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
