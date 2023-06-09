import 'package:flutter/material.dart';
import 'package:flutter_week7_mvvm/feature/product/view/product_main.dart';

import 'feature/product/view/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProductMain());
  }
}
